import json, os, sqlite3
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlparse

DB = Path(os.getenv('PREVIEW_DB_PATH', Path(__file__).resolve().parent / 'data' / 'academia-preview.sqlite'))
def rows(query, params=()):
    connection = sqlite3.connect(DB); connection.row_factory = sqlite3.Row
    try: return [dict(row) for row in connection.execute(query, params).fetchall()]
    finally: connection.close()
def one(query, params=()):
    result = rows(query, params); return result[0] if result else None

class Handler(BaseHTTPRequestHandler):
    def send_data(self, data, status=200):
        body = json.dumps({'success': status < 400, 'data': data} if status < 400 else {'success': False, 'error': {'message': data}}, ensure_ascii=False).encode()
        self.send_response(status); self.send_header('Content-Type', 'application/json; charset=utf-8'); self.send_header('Content-Length', str(len(body))); self.end_headers(); self.wfile.write(body)
    def do_GET(self):
        path = urlparse(self.path).path
        if path in ('/health', '/services/health'): return self.send_data({'status': 'ok', 'mode': 'preview', 'database': 'SQLite'})
        if path == '/api/learning/catalog':
            return self.send_data({'levels': rows('SELECT * FROM aprendizaje_niveles_educativos WHERE active=1 ORDER BY sort_order'), 'categories': rows('SELECT * FROM aprendizaje_categorias WHERE active=1 ORDER BY sort_order'), 'lessons': rows('SELECT * FROM aprendizaje_lecciones ORDER BY sort_order'), 'settings': rows('SELECT * FROM aprendizaje_configuracion_sitio')})
        if path == '/api/learning/lessons': return self.send_data(rows('SELECT * FROM aprendizaje_lecciones ORDER BY sort_order'))
        if path == '/api/learning/practice-topics':
            sections = rows("SELECT * FROM aprendizaje_secciones_leccion WHERE published=1 AND section_type IN ('activity','evaluation','exam') ORDER BY lesson_id,sort_order")
            lessons = {item['id']: item for item in rows('SELECT * FROM aprendizaje_lecciones')}
            return self.send_data([{**item, 'lesson': lessons.get(item['lesson_id'])} for item in sections if item['lesson_id'] in lessons])
        prefix = '/api/learning/lessons/'
        if path.startswith(prefix):
            lesson = one('SELECT * FROM aprendizaje_lecciones WHERE slug=?', (path[len(prefix):],))
            if not lesson: return self.send_data('Lección no encontrada', 404)
            lesson_id = lesson['id']
            links = rows('SELECT * FROM aprendizaje_medios_leccion WHERE lesson_id=? ORDER BY sort_order', (lesson_id,))
            media_ids = [item['media_id'] for item in links]
            media = [] if not media_ids else rows(f"SELECT * FROM aprendizaje_medios WHERE id IN ({','.join('?' for _ in media_ids)})", media_ids)
            return self.send_data({'lesson': lesson, 'sections': rows('SELECT * FROM aprendizaje_secciones_leccion WHERE lesson_id=? AND published=1 ORDER BY sort_order', (lesson_id,)), 'resources': rows('SELECT * FROM aprendizaje_recursos WHERE lesson_id=? AND published=1 ORDER BY sort_order', (lesson_id,)), 'media': media, 'mediaLinks': links})
        exercise_prefix = '/api/practice/exercises/'
        if path.startswith(exercise_prefix):
            item = one('SELECT * FROM practica_ejercicios WHERE section_id=?', (path[len(exercise_prefix):],))
            if not item: return self.send_data('No hay ejercicios para esta sección', 404)
            parsed = json.loads(item.pop('json_data')); items = parsed if isinstance(parsed, list) else parsed.get('exercises', parsed.get('ejercicios', []))
            for exercise in items: exercise.pop('answer', None); exercise.pop('resultado', None)
            return self.send_data({**item, 'exercises': items})
        if path.startswith('/api/practice/dashboard/'): return self.send_data({'progress': [], 'attempts': [], 'challenges': [], 'assignedChallenges': [], 'streakDays': 0})
        return self.send_data('Ruta no disponible en preview', 404)
    def do_POST(self): return self.send_data({'preview': True, 'score': 0})
    def do_PUT(self): return self.send_data({'preview': True})
    def log_message(self, message, *args): print(message % args)

ThreadingHTTPServer(('0.0.0.0', 4700), Handler).serve_forever()
