import { useEffect, useState } from 'react';
import { ArrowRight } from 'lucide-react';
import { learningApi, practiceApi } from '@/api';
import { ExerciseBlock } from '@/pages/LessonPage';

function ApplePile({ count, draggable = false, selected = false, onSelect, dragPayload = 'source', onDrop, dropReady = false }) {
  const visible = Math.min(Number(count) || 0, 12);
  return <div
    className={`apple-pile${dropReady ? ' drop-ready' : ''}`}
    aria-label={`${count} manzanas`}
    onDragOver={onDrop ? (event) => { event.preventDefault(); event.dataTransfer.dropEffect = 'move'; } : undefined}
    onDrop={onDrop}
  >{Array.from({ length: visible }, (_, index) => <span
    className={`${draggable ? 'draggable-apple' : ''}${selected && index === 0 ? ' selected' : ''}`}
    draggable={draggable}
    role={draggable ? 'button' : undefined}
    tabIndex={draggable ? 0 : undefined}
    aria-label={draggable ? 'Manzana disponible para repartir' : undefined}
    onDragStart={draggable ? (event) => {
      event.dataTransfer.effectAllowed = 'move';
      event.dataTransfer.setData('application/x-equation-apple', dragPayload);
      event.dataTransfer.setData('text/plain', dragPayload);
      onSelect?.();
    } : undefined}
    onClick={draggable ? onSelect : undefined}
    onKeyDown={draggable ? (event) => {
      if (event.key === 'Enter' || event.key === ' ') { event.preventDefault(); onSelect?.(); }
    } : undefined}
    key={index}
  >🍎</span>)}{count > visible && <b>+{count - visible}</b>}{count === 0 && <em>Sin manzanas</em>}</div>;
}

function EquationBalanceGame({ game }) {
  const challenges = game?.config?.challenges ?? [];
  const points = Number(game?.config?.points_per_challenge || 100);
  const [current, setCurrent] = useState(0);
  const [removedLeft, setRemovedLeft] = useState(0);
  const [removedRight, setRemovedRight] = useState(0);
  const [boxLoads, setBoxLoads] = useState([]);
  const [message, setMessage] = useState('Quita primero el mismo número de manzanas en ambos lados.');
  const [solved, setSolved] = useState(false);
  const [selectedApple, setSelectedApple] = useState(false);
  const [dropTarget, setDropTarget] = useState(null);
  const [score, setScore] = useState(() => Number(localStorage.getItem('equation-balance-score') || 0));
  const challenge = challenges[current];
  const reset = (next = current) => {
    setCurrent(next); setRemovedLeft(0); setRemovedRight(0); setBoxLoads([]); setSolved(false); setSelectedApple(false); setDropTarget(null);
    setMessage('Quita primero el mismo número de manzanas en ambos lados.');
  };
  useEffect(() => { if (challenge) reset(current); }, [game?.id]);
  if (!challenge) return <div className="game-empty">El administrador aún no ha configurado ecuaciones para este juego.</div>;
  const a = Number(challenge.a); const b = Number(challenge.b); const c = Number(challenge.c);
  const phaseTwo = removedLeft === b && removedRight === b;
  const remaining = c - b;
  const assigned = boxLoads.reduce((sum, value) => sum + value, 0);
  const removeApple = (side) => {
    if (phaseTwo || solved) return;
    if ((removedLeft > removedRight && side === 'left') || (removedRight > removedLeft && side === 'right')) {
      setMessage(`Para conservar el equilibrio, ahora debes quitar una manzana del lado ${side === 'left' ? 'derecho' : 'izquierdo'}.`);
      return;
    }
    if (side === 'left') setRemovedLeft((value) => Math.min(b, value + 1));
    else setRemovedRight((value) => Math.min(b, value + 1));
    const nextLeft = side === 'left' ? Math.min(b, removedLeft + 1) : removedLeft;
    const nextRight = side === 'right' ? Math.min(b, removedRight + 1) : removedRight;
    if (nextLeft === b && nextRight === b) {
      setBoxLoads(Array.from({ length: a }, () => 0));
      setMessage(`¡Equilibrio conservado! Ahora reparte ${remaining} manzanas entre ${a} cajas.`);
    } else if (nextLeft !== nextRight) setMessage('La balanza está inclinada: realiza la misma operación del otro lado.');
    else setMessage(`Bien: quitaste ${nextLeft} manzana${nextLeft === 1 ? '' : 's'} de cada lado.`);
  };
  const completeChallenge = (loads) => {
    const expected = remaining / a;
    const total = loads.reduce((sum, value) => sum + value, 0);
    if (total !== remaining) { setMessage(`Todavía quedan ${remaining - total} manzanas por repartir.`); return false; }
    if (!loads.every((value) => value === expected)) { setMessage('Usaste todas las manzanas, pero las cajas no tienen la misma cantidad. Redistribúyelas.'); return false; }
    if (!solved) {
      const nextScore = score + points; setScore(nextScore); localStorage.setItem('equation-balance-score', String(nextScore)); setSolved(true);
    }
    setSelectedApple(false); setMessage(`¡Correcto! Cada caja vale x = ${expected}.`); return true;
  };
  const updateLoads = (next) => {
    setBoxLoads(next); setSelectedApple(false); setDropTarget(null);
    const total = next.reduce((sum, value) => sum + value, 0);
    if (total === remaining) completeChallenge(next);
    else setMessage(`Bien. Quedan ${remaining - total} manzana${remaining - total === 1 ? '' : 's'} por repartir.`);
  };
  const distributeToBox = (index, origin = 'source') => {
    if (!phaseTwo || solved) return;
    const next = [...boxLoads];
    if (origin.startsWith('box:')) {
      const sourceIndex = Number(origin.split(':')[1]);
      if (!Number.isInteger(sourceIndex) || sourceIndex === index || !next[sourceIndex]) return;
      next[sourceIndex] -= 1;
    } else if (assigned >= remaining) {
      setMessage('Ya repartiste todas las manzanas. Mueve una entre cajas o devuélvela a la caja grande.'); return;
    }
    next[index] += 1; updateLoads(next);
  };
  const returnFromBox = (index) => {
    if (!phaseTwo || solved || !boxLoads[index]) return;
    const next = [...boxLoads]; next[index] -= 1; updateLoads(next);
  };
  const droppedPayload = (event) => event.dataTransfer.getData('application/x-equation-apple') || event.dataTransfer.getData('text/plain');
  const changeBox = (index, delta) => {
    if (!phaseTwo || solved) return;
    if (delta > 0) distributeToBox(index);
    else returnFromBox(index);
  };
  const verify = () => {
    completeChallenge(boxLoads);
  };
  return (
    <section className="equation-game" style={{ '--game-color': game.theme_color || '#8f1d2c' }}>
      <header className="game-header"><div><span>JUEGO INTERACTIVO</span><h2>{game.title}</h2><p>{game.description}</p></div><div className="game-score"><small>Puntuación</small><strong>{score}</strong></div></header>
      <div className="game-progress"><span style={{ width: `${(current + (solved ? 1 : 0)) / challenges.length * 100}%` }} /><small>Reto {current + 1} de {challenges.length}</small></div>
      <div className="equation-card"><small>ECUACIÓN ACTUAL</small><strong>{a}x + {b} = {c}</strong><p>{game.instructions}</p></div>
      {!phaseTwo ? <div className={`balance-stage ${removedLeft === removedRight ? '' : removedLeft > removedRight ? 'tilt-left' : 'tilt-right'}`}>
        <div className="balance-side"><h3>Lado izquierdo</h3><div className="box-row">{Array.from({ length: a }, (_, index) => <span className="closed-box" key={index}>📦<small>x</small></span>)}</div><ApplePile count={b - removedLeft} /><button onClick={() => removeApple('left')} disabled={removedLeft >= b}>Quitar una manzana</button></div>
        <div className="balance-center"><span>⚖️</span><b>{removedLeft === removedRight ? '=' : '≠'}</b></div>
        <div className="balance-side"><h3>Lado derecho</h3><ApplePile count={c - removedRight} /><button onClick={() => removeApple('right')} disabled={removedRight >= b}>Quitar una manzana</button></div>
      </div> : <div className="distribution-stage"><div
        className={`source-apples${dropTarget === 'source' ? ' drop-ready' : ''}`}
        onDragOver={(event) => { event.preventDefault(); setDropTarget('source'); }}
        onDragLeave={() => setDropTarget(null)}
        onDrop={(event) => { event.preventDefault(); const payload = droppedPayload(event); if (payload.startsWith('box:')) returnFromBox(Number(payload.split(':')[1])); setDropTarget(null); }}
      ><h3>Caja grande: arrastra las manzanas</h3><ApplePile count={remaining - assigned} draggable={!solved && assigned < remaining} selected={selectedApple} onSelect={() => { setSelectedApple(true); setMessage('Manzana seleccionada. Ahora toca una caja o arrástrala hasta ella.'); }} /><strong>{remaining - assigned} disponibles</strong><small>También puedes tocar una manzana y después una caja.</small></div><div className="target-boxes">{boxLoads.map((load, index) => <article
        className={dropTarget === index ? 'drop-ready' : ''}
        onDragOver={(event) => { event.preventDefault(); event.dataTransfer.dropEffect = 'move'; setDropTarget(index); }}
        onDragLeave={() => setDropTarget(null)}
        onDrop={(event) => { event.preventDefault(); distributeToBox(index, droppedPayload(event) || 'source'); }}
        onClick={() => { if (selectedApple) distributeToBox(index); }}
        key={index}
      ><span>📦</span><b>Caja {index + 1}</b><div className="box-apple-pile">{Array.from({ length: Math.min(load, 12) }, (_, appleIndex) => <span
        draggable={!solved}
        title="Arrastra para mover o toca para devolver"
        onDragStart={(event) => { const payload = `box:${index}`; event.dataTransfer.effectAllowed = 'move'; event.dataTransfer.setData('application/x-equation-apple', payload); event.dataTransfer.setData('text/plain', payload); }}
        onClick={(event) => { event.stopPropagation(); returnFromBox(index); }}
        key={appleIndex}
      >🍎</span>)}{load > 12 && <b>+{load - 12}</b>}</div><strong>{load} manzana{load === 1 ? '' : 's'}</strong><div><button aria-label={`Devolver una manzana de la caja ${index + 1}`} onClick={(event) => { event.stopPropagation(); changeBox(index, -1); }} disabled={!load || solved}>−</button><button aria-label={`Agregar una manzana a la caja ${index + 1}`} onClick={(event) => { event.stopPropagation(); changeBox(index, 1); }} disabled={assigned >= remaining || solved}>+</button></div></article>)}</div></div>}
      <div className={solved ? 'game-feedback success' : 'game-feedback'}><span>{solved ? '✓' : '💡'}</span><p>{message}</p></div>
      <div className="game-actions">{phaseTwo && !solved && <button className="primary-action" onClick={verify}>Comprobar reparto</button>}{solved && <button className="primary-action" onClick={() => reset((current + 1) % challenges.length)}>Siguiente ecuación <ArrowRight /></button>}<button onClick={() => reset(current)}>Reiniciar reto</button></div>
    </section>
  );
}

export default function PracticePage({ user }) {
  const [mode, setMode] = useState('game');
  const [topics, setTopics] = useState([]);
  const [selectedId, setSelectedId] = useState(null);
  const [game, setGame] = useState(null);
  const [gameError, setGameError] = useState('');
  const [topicsError, setTopicsError] = useState('');
  useEffect(() => {
    practiceApi.game('balanza-ecuaciones').then(setGame).catch((reason) => setGameError(reason.message));
    learningApi.practiceTopics()
      .then((items) => {
        setTopics(items);
        setSelectedId(items[0]?.id ?? null);
      })
      .catch((reason) => setTopicsError(reason.message));
  }, []);
  const selected = topics.find((item) => Number(item.id) === Number(selectedId));
  return <main className="standalone-page practice-page"><div className="page-heading"><span>JUEGOS Y RETOS</span><h1>Practica a tu ritmo</h1><p>Aprende jugando o genera ejercicios con calificación inmediata.</p></div><div className="practice-mode-tabs"><button className={mode === 'game' ? 'active' : ''} onClick={() => setMode('game')}>⚖️ Balanza de ecuaciones</button><button className={mode === 'exercises' ? 'active' : ''} onClick={() => setMode('exercises')}>✎ Práctica generada</button></div>{mode === 'game' && (game ? <EquationBalanceGame game={game} /> : <div className="game-empty">{gameError || 'Cargando juego interactivo…'}</div>)}{mode === 'exercises' && <>{topics.length ? <><div className="practice-topics">{topics.map((item) => <button className={Number(selectedId) === Number(item.id) ? 'active' : ''} onClick={() => setSelectedId(item.id)} key={item.id}>{item.lesson.title} · {item.section_type === 'evaluation' ? 'Evaluación' : 'Actividad'}</button>)}</div>{selected && <ExerciseBlock key={selected.id} section={selected} lesson={selected.lesson} user={user} onComplete={() => {}} />}</> : <div className="game-empty">{topicsError || 'Cargando temas disponibles…'}</div>}</>}</main>;
}


