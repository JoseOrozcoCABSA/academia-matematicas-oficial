import { appendFileSync, mkdirSync } from 'node:fs';

type Metadata = Record<string, unknown>;

const write = (
  file: string,
  level: string,
  message: string,
  metadata: Metadata = {},
): void => {
  const line = JSON.stringify({
    timestamp: new Date().toISOString(),
    level,
    message,
    ...metadata,
  });
  mkdirSync('src/logs', { recursive: true });
  appendFileSync(`src/logs/${file}`, `${line}\n`, 'utf8');
  console.log(`[${level}] ${message}`);
};

const logger = {
  info: (message: string, metadata?: Metadata): void =>
    write('app.log', 'info', message, metadata),
  error: (message: string, metadata?: Metadata): void =>
    write('error.log', 'error', message, metadata),
  audit: (message: string, metadata?: Metadata): void =>
    write('audit.log', 'audit', message, metadata),
};

export default logger;
