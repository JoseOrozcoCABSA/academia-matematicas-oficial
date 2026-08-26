import * as XLSX from 'xlsx';

export const CONTENT_SHEETS = [
  { name: 'Niveles', service: 'learning', resource: 'aprendizaje_niveles_educativos', key: 'slug' },
  { name: 'Categorias', service: 'learning', resource: 'aprendizaje_categorias', key: 'slug' },
  { name: 'Lecciones', service: 'learning', resource: 'aprendizaje_lecciones', key: 'slug' },
  { name: 'Secciones', service: 'learning', resource: 'aprendizaje_secciones_leccion', key: 'id' },
  { name: 'Recursos', service: 'learning', resource: 'aprendizaje_recursos', key: 'id' },
  { name: 'Medios', service: 'learning', resource: 'aprendizaje_medios', key: 'id' },
  { name: 'MediosLeccion', service: 'learning', resource: 'aprendizaje_medios_leccion', key: 'id' },
];

const editable = (row) => Object.fromEntries(Object.entries(row).filter(([key]) => !['created_at', 'updated_at'].includes(key)));
const safeSheetName = (name) => name.slice(0, 31);
const sheetRows = (workbook, name) => workbook.Sheets[name]
  ? XLSX.utils.sheet_to_json(workbook.Sheets[name], { defval: '', raw: true })
  : [];

export async function downloadContentMap(gatewayApi) {
  const workbook = XLSX.utils.book_new();
  const catalog = {};
  for (const definition of CONTENT_SHEETS) {
    const result = await gatewayApi.list(definition.service, definition.resource, 2000);
    const rows = (result?.rows ?? result ?? []).map(editable);
    catalog[definition.name] = rows;
    const sheet = XLSX.utils.json_to_sheet(rows.length ? rows : [{ instrucciones: `Sin registros en ${definition.name}` }]);
    sheet['!autofilter'] = { ref: sheet['!ref'] || 'A1:A1' };
    sheet['!cols'] = Object.keys(rows[0] || { instrucciones: '' }).map((key) => ({ wch: Math.min(55, Math.max(14, key.length + 3)) }));
    XLSX.utils.book_append_sheet(workbook, sheet, safeSheetName(definition.name));
  }
  const summary = [
    ['MAPA DE CONTENIDO · ACADEMIA MATEMÁTICAS CABSA'],
    ['Generado', new Date().toLocaleString('es-MX')],
    ['Uso', 'Respaldo y plantilla para carga masiva. No cambies los nombres de las hojas ni de las columnas.'],
    [],
    ['Hoja', 'Registros', 'Relación'],
    ...CONTENT_SHEETS.map((item) => [item.name, catalog[item.name].length, item.name === 'Lecciones' ? 'category_id → Categorias.id' : item.name === 'Secciones' ? 'lesson_id → Lecciones.id' : 'Consulta sus identificadores y relaciones']),
  ];
  XLSX.utils.book_append_sheet(workbook, XLSX.utils.aoa_to_sheet(summary), 'LEEME', true);
  XLSX.writeFile(workbook, `mapa-contenido-matematicas-${new Date().toISOString().slice(0, 10)}.xlsx`, { compression: true });
}

export async function readContentWorkbook(file) {
  const workbook = XLSX.read(await file.arrayBuffer(), { type: 'array', cellDates: true });
  const data = Object.fromEntries(CONTENT_SHEETS.map((item) => [item.name, sheetRows(workbook, item.name)]));
  const total = Object.values(data).reduce((sum, rows) => sum + rows.length, 0);
  if (!total) throw new Error('El archivo no contiene hojas compatibles. Usa primero “Descargar mapa / plantilla”.');
  return { data, total, sheets: CONTENT_SHEETS.filter((item) => data[item.name].length).map((item) => `${item.name}: ${data[item.name].length}`) };
}

const normalize = (row) => Object.fromEntries(Object.entries(row)
  .filter(([key, value]) => key && value !== '')
  .map(([key, value]) => [key.trim(), typeof value === 'string' ? value.trim() : value]));

const required = {
  Niveles: ['slug', 'name'], Categorias: ['slug', 'name', 'education_level'],
  Lecciones: ['slug', 'title', 'category_id'], Secciones: ['lesson_id', 'section_type', 'title'],
  Recursos: ['lesson_id', 'title'], Medios: ['title', 'media_type'], MediosLeccion: ['lesson_id', 'media_id'],
};

export function validateContentWorkbook(data) {
  const errors = [];
  for (const definition of CONTENT_SHEETS) {
    data[definition.name].forEach((raw, index) => {
      const row = normalize(raw);
      for (const field of required[definition.name] || []) {
        if (row[field] === undefined || row[field] === '') errors.push(`${definition.name}, fila ${index + 2}: falta ${field}.`);
      }
    });
  }
  return errors;
}

export async function importContentWorkbook(gatewayApi, data, onProgress = () => {}) {
  const errors = validateContentWorkbook(data);
  if (errors.length) throw new Error(errors.slice(0, 8).join('\n'));
  let processed = 0;
  const total = Object.values(data).reduce((sum, rows) => sum + rows.length, 0);
  for (const definition of CONTENT_SHEETS) {
    if (!data[definition.name].length) continue;
    const currentResult = await gatewayApi.list(definition.service, definition.resource, 2000);
    const current = currentResult?.rows ?? currentResult ?? [];
    const byKey = new Map(current.map((row) => [String(row[definition.key]), row]));
    for (const raw of data[definition.name]) {
      const row = normalize(raw);
      const existing = byKey.get(String(row[definition.key]));
      const payload = editable(row);
      if (existing && definition.key !== 'id') await gatewayApi.update(definition.service, definition.resource, existing.id ?? existing[definition.key], payload);
      else if (existing?.id && definition.key === 'id') await gatewayApi.update(definition.service, definition.resource, existing.id, payload);
      else await gatewayApi.create(definition.service, definition.resource, payload);
      processed += 1;
      onProgress({ processed, total, sheet: definition.name });
    }
  }
  return processed;
}
