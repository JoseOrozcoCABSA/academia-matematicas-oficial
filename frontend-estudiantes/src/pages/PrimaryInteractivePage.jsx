import { useEffect, useMemo, useState } from 'react';
import { Check, ChevronLeft, ChevronRight, RotateCcw, Sparkles, Volume2 } from 'lucide-react';
import '@/primary-interactive.css';

const activities = [
  ['serpiente', 'Serpiente numérica', 'Ordena del 1 al 10'],
  ['sonidos', '¿Qué número sigue?', 'Escucha y completa'],
  ['cantidades', 'Más o menos', 'Compara colecciones'],
  ['bosque', 'El bosque de frutas', 'Cuenta y compara'],
  ['tablero', 'Tablero parlante', 'Explora del 1 al 100'],
  ['faltantes', 'Números faltantes', 'Completa el tablero'],
];

const numberWords = ['cero','uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve','diez','once','doce','trece','catorce','quince','dieciséis','diecisiete','dieciocho','diecinueve','veinte'];
const word = (number) => number <= 20 ? numberWords[number] : number < 30 ? `veinti${numberWords[number - 20]}` : number < 40 ? `treinta${number % 10 ? ` y ${numberWords[number % 10]}` : ''}` : number < 50 ? `cuarenta${number % 10 ? ` y ${numberWords[number % 10]}` : ''}` : number < 60 ? `cincuenta${number % 10 ? ` y ${numberWords[number % 10]}` : ''}` : number < 70 ? `sesenta${number % 10 ? ` y ${numberWords[number % 10]}` : ''}` : number < 80 ? `setenta${number % 10 ? ` y ${numberWords[number % 10]}` : ''}` : number < 90 ? `ochenta${number % 10 ? ` y ${numberWords[number % 10]}` : ''}` : number < 100 ? `noventa${number % 10 ? ` y ${numberWords[number % 10]}` : ''}` : 'cien';
const shuffled = (values) => [...values].sort(() => Math.random() - .5);
const random = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;

function speak(text) {
  if (!window.speechSynthesis) return;
  window.speechSynthesis.cancel();
  const message = new SpeechSynthesisUtterance(String(text));
  message.lang = 'es-MX'; message.rate = .82; message.pitch = 1.08;
  window.speechSynthesis.speak(message);
}

function Feedback({ state, children }) {
  return <div className={`p1-feedback ${state || ''}`} aria-live="polite">{state === 'success' ? <Check /> : state === 'error' ? '↻' : <Sparkles />}{children}</div>;
}

function SnakeGame({ complete }) {
  const [next, setNext] = useState(1); const [choices, setChoices] = useState(() => shuffled([1,2,3,4,5,6,7,8,9,10])); const [feedback, setFeedback] = useState('');
  const reset = () => { setNext(1); setChoices(shuffled([1,2,3,4,5,6,7,8,9,10])); setFeedback(''); };
  const choose = (value) => {
    if (value !== next) { setFeedback('error'); speak(`Busca el número ${next}`); return; }
    const finished = next === 10; setNext(next + 1); setFeedback('success'); speak(finished ? '¡Excelente! Completaste la serpiente' : `${value}. Ahora busca ${value + 1}`); if (finished) complete();
  };
  return <Game title="Serpiente numérica" instruction={`Toca el ${Math.min(next, 10)} para ayudar a Sami a completar su cuerpo.`} reset={reset}>
    <div className="snake-stage"><div className={`snake-face ${next > 10 ? 'happy' : ''}`}>◉‿◉</div><div className="snake-body">{Array.from({length:10},(_,i)=><span className={i + 1 < next ? 'filled' : ''} key={i}>{i + 1 < next ? i + 1 : '?'}</span>)}</div></div>
    <div className="number-choices">{choices.map(value => <button disabled={value < next} onClick={() => choose(value)} key={value}>{value}</button>)}</div>
    <Feedback state={feedback}>{next > 10 ? '¡Sami está feliz! Ordenaste todos los números.' : feedback === 'error' ? `Ese no sigue. Busca el ${next}.` : 'Empieza por el número 1.'}</Feedback>
  </Game>;
}

function SoundSequence({ complete }) {
  const makeRound = () => { const start=random(1,6); const answer=start+4; return {sequence:[start,start+1,start+2,start+3],answer,options:shuffled([answer, answer+1, Math.max(1,answer-1)])}; };
  const [round,setRound]=useState(makeRound); const [feedback,setFeedback]=useState('');
  const play=()=>speak(`${round.sequence.join(', ')}, ¿qué número sigue?`);
  const choose=(value)=>{if(value===round.answer){setFeedback('success');speak(`¡Correcto! Sigue el ${value}`);complete();}else{setFeedback('error');speak('Escucha otra vez e inténtalo de nuevo');}};
  return <Game title="¿Qué número sigue?" instruction="Escucha la serie y elige el número que continúa." reset={()=>{setRound(makeRound());setFeedback('');}}><button className="listen-button" onClick={play}><Volume2/>Escuchar serie</button><div className="sound-sequence">{round.sequence.map(n=><span key={n}>{n}</span>)}<b>?</b></div><div className="number-choices compact">{round.options.map(n=><button onClick={()=>choose(n)} key={n}>{n}</button>)}</div><Feedback state={feedback}>{feedback==='success'?'¡Muy bien! Reconociste el patrón.':feedback==='error'?'Casi. Escucha nuevamente con atención.':'Pulsa el altavoz cuando estés listo.'}</Feedback></Game>;
}

function QuantityGame({ complete }) {
  const makeRound=()=>{let left=random(2,9),right=random(2,9);while(left===right)right=random(2,9);return{left,right,mode:Math.random()>.5?'más':'menos'};};
  const [round,setRound]=useState(makeRound);const[feedback,setFeedback]=useState('');
  const answer=round.mode==='más'?Math.max(round.left,round.right):Math.min(round.left,round.right);
  const choose=(value)=>{if(value===answer){setFeedback('success');speak(`Correcto. Aquí hay ${round.mode}`);complete();}else{setFeedback('error');speak(`Observa otra vez. Busca donde hay ${round.mode}`);}};
  return <Game title="Más o menos" instruction={`¿Dónde hay ${round.mode} puntos? Toca la tarjeta correcta.`} reset={()=>{setRound(makeRound());setFeedback('');}}><button className="listen-inline" onClick={()=>speak(`¿Dónde hay ${round.mode} puntos?`)}><Volume2/>Escuchar pregunta</button><div className="quantity-pair">{[['left',round.left],['right',round.right]].map(([side,count])=><button onClick={()=>choose(count)} aria-label={`${count} puntos, lado ${side==='left'?'izquierdo':'derecho'}`} key={side}><span className="dots">{Array.from({length:count},(_,i)=><i key={i}/>)}</span><small>{side==='left'?'Izquierda':'Derecha'}</small></button>)}</div><Feedback state={feedback}>{feedback==='success'?'¡Exacto! Comparaste las dos cantidades.':feedback==='error'?'Cuenta los puntos de cada tarjeta.':'Puedes contar cada punto con el dedo.'}</Feedback></Game>;
}

function ForestGame({ complete }) {
  const makeRound=()=>({left:random(1,8),right:random(1,8)});const[round,setRound]=useState(makeRound);const[feedback,setFeedback]=useState('');
  const expected=round.left===round.right?'=':round.left>round.right?'>':'<';
  const choose=(symbol)=>{if(symbol===expected){setFeedback('success');speak(`${round.left} ${symbol==='>'?'es mayor que':symbol==='<'?'es menor que':'es igual a'} ${round.right}`);complete();}else{setFeedback('error');speak('Cuenta las frutas y vuelve a comparar');}};
  return <Game title="El bosque de frutas" instruction="Cuenta las frutas y elige el signo correcto." reset={()=>{setRound(makeRound());setFeedback('');}}><div className="forest"><Tree count={round.left}/><b className="comparison-mark">?</b><Tree count={round.right}/></div><div className="symbol-choices">{['<','=','>'].map(x=><button onClick={()=>choose(x)} key={x}>{x}</button>)}</div><Feedback state={feedback}>{feedback==='success'?`${round.left} ${expected} ${round.right}. ¡Comparación correcta!`:feedback==='error'?'Recuerda: la boca grande mira al número mayor.':'¿Cuál árbol tiene más frutas?'}</Feedback></Game>;
}

function Tree({count}) { return <div className="tree" aria-label={`Árbol con ${count} frutas`}><div className="tree-crown">{Array.from({length:count},(_,i)=><i key={i}>●</i>)}</div><span/><strong>{count}</strong></div>; }

function TalkingBoard({ complete }) {
  const[selected,setSelected]=useState(null);const pick=(n)=>{setSelected(n);speak(`${n}, ${word(n)}`);complete();};
  return <Game title="Tablero parlante" instruction="Toca cualquier casilla. Escucharás el número y verás cómo se escribe." reset={()=>setSelected(null)}><div className="hundred-layout"><div className="hundred-board">{Array.from({length:100},(_,i)=><button className={selected===i+1?'selected':''} onClick={()=>pick(i+1)} key={i}>{i+1}</button>)}</div><aside className="number-display">{selected?<><small>NÚMERO</small><strong>{selected}</strong><b>{word(selected)}</b><button onClick={()=>speak(`${selected}, ${word(selected)}`)}><Volume2/>Repetir</button></>:<><Volume2/><p>Elige una casilla para comenzar.</p></>}</aside></div></Game>;
}

function MissingBoard({ complete }) {
  const makeRound=()=>({missing:shuffled(Array.from({length:100},(_,i)=>i+1)).slice(0,10)});
  const[round,setRound]=useState(makeRound);const[solved,setSolved]=useState([]);const[feedback,setFeedback]=useState('');const current=round.missing.find(n=>!solved.includes(n));
  const options=useMemo(()=>current?shuffled([current,...shuffled(Array.from({length:100},(_,i)=>i+1).filter(n=>n!==current)).slice(0,2)]):[],[current]);
  useEffect(()=>{if(current)speak(`Encuentra el lugar del número ${current}`);},[current]);
  const place=(value)=>{if(value!==current){setFeedback('error');speak(`Ese es el ${value}. Escucha otra vez`);return;}const next=[...solved,current];setSolved(next);setFeedback('success');speak(`Muy bien, ${current}`);if(next.length===round.missing.length)complete();};
  const reset=()=>{setRound(makeRound());setSolved([]);setFeedback('');};
  return <Game title="Números faltantes" instruction={current?'Escucha y elige el número que completa la casilla iluminada.':'¡Completaste todo el tablero!'} reset={reset}><button className="listen-inline" onClick={()=>speak(`¿Dónde está el número ${current}?`)} disabled={!current}><Volume2/>Escuchar número</button><div className="hundred-board missing">{Array.from({length:100},(_,i)=>i+1).map(n=>round.missing.includes(n)&&!solved.includes(n)?<button className={n===current?'target':''} disabled aria-label="Casilla vacía" key={n}>?</button>:<span key={n}>{n}</span>)}</div>{current&&<div className="number-choices compact missing-options">{options.map(n=><button onClick={()=>place(n)} key={n}>{n}</button>)}</div>}<Feedback state={feedback}>{!current?'¡Tablero completo! Excelente trabajo.':feedback==='error'?'Observa los números vecinos y escucha otra vez.':'Elige una de las tres opciones.'}</Feedback></Game>;
}

function Game({title,instruction,reset,children}) { return <section className="p1-game"><header><div><small>ACTIVIDAD INTERACTIVA · P1</small><h2>{title}</h2><p>{instruction}</p></div><button onClick={reset}><RotateCcw/>Reiniciar</button></header>{children}</section>; }

export default function PrimaryInteractivePage({user}) {
  const storageKey=`p1-progress-${user?.id||'guest'}`;const[saved,setSaved]=useState(()=>JSON.parse(localStorage.getItem(storageKey)||'{}'));const[index,setIndex]=useState(0);
  const complete=()=>{const next={...saved,[activities[index][0]]:true};setSaved(next);localStorage.setItem(storageKey,JSON.stringify(next));};
  const Activity=[SnakeGame,SoundSequence,QuantityGame,ForestGame,TalkingBoard,MissingBoard][index];const done=Object.keys(saved).filter(key=>saved[key]).length;
  return <main className="p1-page"><header className="p1-hero"><div><span>PRIMARIA · P1</span><h1>Explora los números jugando</h1><p>Seis actividades táctiles y auditivas para reconocer secuencias, cantidades y relaciones.</p></div><div className="p1-score"><strong>{done}/6</strong><small>actividades exploradas</small></div></header><nav className="p1-activity-nav" aria-label="Actividades">{activities.map((activity,i)=><button className={`${i===index?'active ':''}${saved[activity[0]]?'done':''}`} onClick={()=>setIndex(i)} key={activity[0]}><span>{saved[activity[0]]?'✓':i+1}</span><b>{activity[1]}</b><small>{activity[2]}</small></button>)}</nav><Activity complete={complete}/><div className="p1-pagination"><button disabled={index===0} onClick={()=>setIndex(index-1)}><ChevronLeft/>Anterior</button><span>{index+1} de {activities.length}</span><button disabled={index===activities.length-1} onClick={()=>setIndex(index+1)}>Siguiente<ChevronRight/></button></div></main>;
}
