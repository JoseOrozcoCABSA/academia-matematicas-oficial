import { useState } from 'react';
import { ExternalLink, Menu, Sigma } from 'lucide-react';
import { gatewayApi } from '@/api';

export function AdminLogin({ onLogin }) {
  const [form, setForm] = useState({ email: '', password: '' });
  const [error, setError] = useState('');
  const [busy, setBusy] = useState(false);
  const submit = async (event) => {
    event.preventDefault(); setError(''); setBusy(true);
    try {
      const session = await gatewayApi.login(form);
      if (session.user?.role !== 'admin') throw new Error('Esta cuenta no tiene permisos de administración.');
      localStorage.setItem('cabsa_access_token', session.token);
      localStorage.setItem('cabsa_current_user', JSON.stringify(session.user));
      onLogin(session.user);
    } catch (reason) { setError(reason.message); }
    finally { setBusy(false); }
  };
  return <main className="admin-login"><form onSubmit={submit}><div className="admin-login-brand"><Sigma /><span>ACADEMIA<strong>CABSA</strong><small>ADMINISTRACIÓN</small></span></div><h1>Panel administrativo</h1><p>Inicia sesión para administrar contenido, alumnos, prácticas e inteligencia artificial.</p><label>Correo electrónico<input type="email" value={form.email} onChange={(event) => setForm({ ...form, email: event.target.value })} required /></label><label>Contraseña<input type="password" value={form.password} onChange={(event) => setForm({ ...form, password: event.target.value })} required /></label>{error && <div className="alert error">{error}</div>}<button className="admin-primary" disabled={busy}>{busy ? 'Ingresando…' : 'Iniciar sesión'}</button><small>Acceso exclusivo para administradores.</small></form></main>;
}

export function Sidebar({ navigation, page, setPage, open, setOpen }) {
  return (
    <aside className={`legacy-sidebar ${open ? 'open' : ''}`}>
      <nav>
        {navigation.map((item) => {
          const Icon = item.icon;
          return <button key={item.id} className={page === item.id ? 'active' : ''} onClick={() => { setPage(item.id); setOpen(false); }}><Icon />{item.label}</button>;
        })}
      </nav>
    </aside>
  );
}

export function Topbar({ setOpen, onLogout, user }) {
  return (
    <header className="legacy-topbar">
      <div className="topbar-brand"><button onClick={() => setOpen(true)} aria-label="Abrir menú"><Menu /></button><span>ACADEMIA<strong>CABSA</strong><small>MATEMÁTICAS</small></span></div>
      <div className="topbar-actions"><span>{user?.name || 'Administrador CABSA'}</span><a href="http://127.0.0.1:5176" target="_blank" rel="noreferrer">Ver sitio <ExternalLink /></a><button type="button" onClick={onLogout}>Salir</button></div>
    </header>
  );
}

export function AppFooter({ health }) {
  const online = (health?.services ?? []).filter((item) => item.status === 'ok').length;
  return <footer className="legacy-footer"><span>Academia CABSA · Administración matemática</span><span><i className={online === 4 ? 'online' : ''} /> {online}/4 servicios SOA operativos</span></footer>;
}
