import json, sqlite3, sys
from pathlib import Path

root = Path(__file__).resolve().parent
source = Path(sys.argv[1]) if len(sys.argv) > 1 else root / 'data' / 'snapshot.json'
target = Path(sys.argv[2]) if len(sys.argv) > 2 else root / 'data' / 'academia-preview.sqlite'
sql_target = target.with_suffix('.sql')
payload = json.loads(source.read_text(encoding='utf-8'))
target.parent.mkdir(parents=True, exist_ok=True)
if target.exists(): target.unlink()
connection = sqlite3.connect(target)
try:
    for table, content in payload['tables'].items():
        columns = content['columns']
        definitions = ', '.join(f'"{column}"' for column in columns)
        connection.execute(f'CREATE TABLE "{table}" ({definitions})')
        if content['rows']:
            placeholders = ','.join('?' for _ in columns)
            values = [[row.get(column) for column in columns] for row in content['rows']]
            connection.executemany(f'INSERT INTO "{table}" VALUES ({placeholders})', values)
    connection.execute('CREATE TABLE preview_metadata (generated_at, source_database)')
    connection.execute('INSERT INTO preview_metadata VALUES (?, ?)', (payload['generated_at'], payload['source_database']))
    connection.commit()
    sql_target.write_text('\n'.join(connection.iterdump()), encoding='utf-8')
finally: connection.close()
print(f'SQLite preview: {target}')
print(f'SQL legible: {sql_target}')
