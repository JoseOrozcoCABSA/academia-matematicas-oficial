export const INTERACTIVE_ACTIVITIES = [
  { id: 'serpiente', title: 'Serpiente numérica', description: 'Ordena los números del 1 al 10.' },
  { id: 'sonidos', title: '¿Qué número sigue?', description: 'Escucha y completa una secuencia.' },
  { id: 'cantidades', title: 'Más o menos', description: 'Compara colecciones y cantidades.' },
  { id: 'bosque', title: 'El bosque de frutas', description: 'Cuenta y compara grupos de frutas.' },
  { id: 'tablero', title: 'Tablero parlante', description: 'Explora los números del 1 al 100.' },
  { id: 'faltantes', title: 'Números faltantes', description: 'Completa los espacios del tablero.' },
];

export const interactiveActivityUrl = (id) => `/actividades?actividad=${encodeURIComponent(id)}&embed=1`;

export const activityIdFromUrl = (value) => {
  try {
    const url = new URL(String(value || ''), window.location.origin);
    return url.pathname === '/actividades' ? url.searchParams.get('actividad') : null;
  } catch {
    return null;
  }
};
