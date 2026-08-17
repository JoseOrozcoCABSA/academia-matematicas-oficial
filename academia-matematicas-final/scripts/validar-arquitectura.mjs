import { existsSync, readdirSync, readFileSync, statSync } from 'node:fs';
import { dirname, extname, join, relative, resolve, sep } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = fileURLToPath(new URL('../', import.meta.url));
const units = [
  ['ai-service', ['server.ts']],
  ['api-gateway', ['server.ts']],
  ['identity-service', ['server.ts']],
  ['learning-service', ['server.ts']],
  ['practice-service', ['server.ts']],
  ['frontend-estudiantes', ['src/main.jsx', 'vite.config.js']],
  ['frontend-administracion', ['src/main.jsx', 'vite.config.js']],
];
const codeExtensions = new Set(['.ts', '.tsx', '.js', '.jsx', '.mjs']);
const resolutionExtensions = ['', '.ts', '.tsx', '.js', '.jsx', '.mjs', '.json', '.css'];
const importPattern = /(?:import|export)\s+(?:[\s\S]*?\s+from\s+)?['"]([^'"]+)['"]|import\s*\(\s*['"]([^'"]+)['"]\s*\)|require\s*\(\s*['"]([^'"]+)['"]\s*\)/g;

function filesBelow(directory) {
  return readdirSync(directory, { withFileTypes: true }).flatMap((entry) => {
    if (['node_modules', 'dist', 'storage'].includes(entry.name)) return [];
    const path = join(directory, entry.name);
    return entry.isDirectory() ? filesBelow(path) : [path];
  });
}

function resolveCandidate(base) {
  // TypeScript con NodeNext conserva `.js` en los imports aunque el archivo
  // fuente correspondiente sea `.ts` o `.tsx` durante el desarrollo.
  const sourceCandidate = base.endsWith('.js')
    ? `${base.slice(0, -3)}.ts`
    : base.endsWith('.jsx')
      ? `${base.slice(0, -4)}.tsx`
      : null;
  if (sourceCandidate && existsSync(sourceCandidate) && statSync(sourceCandidate).isFile()) {
    return resolve(sourceCandidate);
  }

  for (const extension of resolutionExtensions) {
    const candidate = `${base}${extension}`;
    if (existsSync(candidate) && statSync(candidate).isFile()) return resolve(candidate);
  }
  for (const extension of resolutionExtensions.slice(1)) {
    const candidate = join(base, `index${extension}`);
    if (existsSync(candidate) && statSync(candidate).isFile()) return resolve(candidate);
  }
  return null;
}

function resolveImport(unitRoot, sourceFile, specifier) {
  if (specifier.startsWith('@/')) return resolveCandidate(join(unitRoot, 'src', specifier.slice(2)));
  if (specifier === '#app') return resolveCandidate(join(unitRoot, 'app'));
  if (specifier === '#models') return resolveCandidate(join(unitRoot, 'src/models/index'));
  if (specifier.startsWith('#')) {
    const [scope, ...rest] = specifier.slice(1).split('/');
    return resolveCandidate(join(unitRoot, 'src', scope, ...rest));
  }
  if (specifier.startsWith('.')) return resolveCandidate(resolve(dirname(sourceFile), specifier));
  return undefined;
}

function importsOf(unitRoot, file) {
  const text = readFileSync(file, 'utf8');
  return [...text.matchAll(importPattern)].map((match) => {
    const specifier = match[1] ?? match[2] ?? match[3];
    return { specifier, target: resolveImport(unitRoot, file, specifier) };
  });
}

let failures = 0;
let checkedImports = 0;
let totalOrphans = 0;
for (const [unitName, entryRelativePaths] of units) {
  const unitRoot = join(root, unitName);
  const sourceFiles = filesBelow(unitRoot).filter((file) =>
    codeExtensions.has(extname(file)) && !file.endsWith('.test.ts') && !file.endsWith('.d.ts'));
  const queue = entryRelativePaths.map((entry) => resolve(join(unitRoot, entry)));
  const reachable = new Set();
  while (queue.length) {
    const file = queue.pop();
    if (reachable.has(file) || !existsSync(file)) continue;
    reachable.add(file);
    for (const dependency of importsOf(unitRoot, file)) {
      if (dependency.target === undefined) continue;
      checkedImports += 1;
      if (dependency.target === null) {
        console.error(`${unitName}: import sin resolver ${dependency.specifier} desde ${relative(root, file)}`);
        failures += 1;
      } else if (!dependency.target.startsWith(`${resolve(unitRoot)}${sep}`)) {
        console.error(`${unitName}: import directo fuera del servicio desde ${relative(root, file)}`);
        failures += 1;
      } else if (codeExtensions.has(extname(dependency.target))) {
        queue.push(dependency.target);
      }
    }
  }
  const orphans = sourceFiles.filter((file) => !reachable.has(resolve(file)) && !file.includes(`${sep}database${sep}migrations${sep}`) && !file.includes(`${sep}database${sep}seeders${sep}`));
  totalOrphans += orphans.length;
  console.log(`${unitName}: ${reachable.size} archivos alcanzables; ${orphans.length} huérfanos.`);
  if (process.argv.includes('--list')) {
    for (const orphan of orphans) console.log(`ORPHAN:${relative(root, orphan).split(sep).join('/')}`);
  }
}

console.log(`Imports internos comprobados: ${checkedImports}. Archivos huérfanos documentados: ${totalOrphans}.`);
if (failures || totalOrphans) process.exitCode = 1;
