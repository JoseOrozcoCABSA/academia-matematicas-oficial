import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { CircleUserRound, LogIn } from 'lucide-react';
import { identityApi } from '@/api';
import logoHorizontal from '@/assets/logo/logo-horizontal.svg';

export default function LoginPage({ setUser }) {
  const navigate = useNavigate();
  const [form, setForm] = useState({ email: '', password: '' });
  const [error, setError] = useState('');
  const submit = async (event) => { event.preventDefault(); setError(''); try { const data = await identityApi.login(form); setUser(data.user); localStorage.setItem('math-token', data.token); navigate('/'); } catch (reason) { setError(reason.message); } };
  return <main className="login-page"><section><img src={logoHorizontal} alt="Academia CABSA" /><h1>Continúa construyendo tu confianza matemática.</h1></section><form onSubmit={submit}><CircleUserRound /><h2>Iniciar sesión</h2><p>Ingresa con tu cuenta de estudiante.</p><label>Correo<input type="email" value={form.email} onChange={(event) => setForm({ ...form, email: event.target.value })} /></label><label>Contraseña<input type="password" value={form.password} onChange={(event) => setForm({ ...form, password: event.target.value })} /></label>{error && <div className="form-error">{error}</div>}<button><LogIn /> Entrar a mi academia</button><Link to="/">Continuar en modo demostración</Link></form></main>;
}

