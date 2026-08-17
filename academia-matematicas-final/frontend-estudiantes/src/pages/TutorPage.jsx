import { useState } from 'react';
import { ArrowRight, Bot } from 'lucide-react';
import { aiApi } from '@/api';

export default function TutorPage({ user }) {
  const [messages, setMessages] = useState([{ role: 'assistant', content: `Hola, ${user.name.split(' ')[0]}. ¿Qué tema quieres comprender mejor?` }]);
  const [input, setInput] = useState('');
  const [conversationId, setConversationId] = useState(null);
  const [sending, setSending] = useState(false);
  const send = async (event) => {
    event.preventDefault(); const message = input.trim(); if (!message || sending) return;
    setMessages((current) => [...current, { role: 'user', content: message }]); setInput(''); setSending(true);
    try { const data = await aiApi.tutor({ conversation_id: conversationId, user_id: user.id, message }); setConversationId(data.conversation_id); setMessages((current) => [...current, { role: 'assistant', content: data.answer }]); }
    catch (reason) { setMessages((current) => [...current, { role: 'assistant', content: reason.message }]); }
    finally { setSending(false); }
  };
  return <main className="tutor-page"><aside><div className="tutor-orb"><Bot /></div><span>TUTOR IA CABSA</span><h1>Pregunta sin miedo.</h1><p>Te acompañaré con pistas y explicaciones paso a paso para que encuentres la respuesta.</p></aside><section className="chat-panel"><header><div><i /><b>Tutor matemático</b></div><small>Disponible ahora</small></header><div className="messages">{messages.map((message, index) => <div className={`message ${message.role}`} key={`${message.role}-${index}`}>{message.content}</div>)}{sending && <div className="message assistant">Pensando paso a paso…</div>}</div><form onSubmit={send}><input value={input} onChange={(event) => setInput(event.target.value)} placeholder="Escribe tu pregunta matemática…" /><button aria-label="Enviar"><ArrowRight /></button></form></section></main>;
}


