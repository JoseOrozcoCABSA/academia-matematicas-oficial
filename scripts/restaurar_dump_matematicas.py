#!/usr/bin/env python3
"""Restaura exclusivamente academia-matematicas-soa desde un dump multibase."""

from __future__ import annotations

import argparse
import re
from datetime import datetime
from pathlib import Path

import pymysql
from pymysql.constants import CLIENT

from etl_google_cloud_matematicas import backup_database, parse_env


TARGET = "academia-matematicas-soa"
MARKER = re.compile(r"^-- Current Database: `([^`]+)`\s*$", re.MULTILINE)


def target_sql(dump: Path) -> str:
    source = dump.read_text(encoding="utf-8", errors="strict")
    markers = list(MARKER.finditer(source))
    blocks: list[str] = []
    for index, marker in enumerate(markers):
        if marker.group(1) != TARGET:
            continue
        end = markers[index + 1].start() if index + 1 < len(markers) else len(source)
        blocks.append(source[marker.start():end])
    if not blocks:
        raise RuntimeError(f"El dump no contiene la base {TARGET}")

    sql = "\n".join(
        [
            "SET NAMES utf8mb4;",
            "SET UNIQUE_CHECKS=0;",
            "SET FOREIGN_KEY_CHECKS=0;",
            "SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';",
            *blocks,
            "SET FOREIGN_KEY_CHECKS=1;",
            "SET UNIQUE_CHECKS=1;",
        ]
    )
    referenced = set(
        re.findall(r"(?:CREATE DATABASE(?:\s+/\*![^*]*\*/)?|USE)\s+`([^`]+)`", sql, re.I)
    )
    unexpected = referenced - {TARGET}
    if unexpected:
        raise RuntimeError(f"La extraccion intento usar otras bases: {sorted(unexpected)}")
    return sql


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--env", type=Path, default=Path(".env"))
    parser.add_argument("--dump", type=Path, required=True)
    parser.add_argument("--backup-dir", type=Path, default=Path("database/backups/antes_dump"))
    args = parser.parse_args()

    env = parse_env(args.env)
    connection = pymysql.connect(
        host=env["DB_HOST"],
        port=int(env.get("DB_PORT", "3306")),
        user=env["DB_USER"],
        password=env["DB_PASSWORD"],
        database=TARGET,
        charset="utf8mb4",
        cursorclass=pymysql.cursors.DictCursor,
        autocommit=True,
        client_flag=CLIENT.MULTI_STATEMENTS,
    )
    try:
        backup = backup_database(connection, args.backup_dir)
        sql = target_sql(args.dump)
        with connection.cursor() as cursor:
            cursor.execute(sql)
            while cursor.nextset():
                pass
        with connection.cursor() as cursor:
            cursor.execute(
                "SELECT COUNT(*) total FROM information_schema.tables WHERE table_schema=%s",
                (TARGET,),
            )
            tables = int(cursor.fetchone()["total"])
        print(f"Restauracion exclusiva terminada: {TARGET}")
        print(f"Respaldo previo: {backup}")
        print(f"Tablas restauradas: {tables}")
        print(f"Fecha: {datetime.now().isoformat(timespec='seconds')}")
    finally:
        connection.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
