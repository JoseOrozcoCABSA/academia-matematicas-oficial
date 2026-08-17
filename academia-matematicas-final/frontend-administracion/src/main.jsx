import React from 'react';
import ReactDOM from 'react-dom/client';
import App from '@/App';
import '@/styles.css';

class ErrorBoundary extends React.Component {
  constructor(props) {
    super(props);
    this.state = { error: null };
  }

  static getDerivedStateFromError(error) {
    return { error };
  }

  componentDidCatch(error, details) {
    console.error('Error no controlado en la administración:', error, details);
  }

  render() {
    if (this.state.error) {
      return (
        <main className="fatal-error" role="alert">
          <section>
            <p>ADMINISTRACIÓN</p>
            <h1>No fue posible mostrar esta pantalla</h1>
            <span>Recarga la aplicación. Si el problema continúa, revisa la consola para consultar el detalle técnico.</span>
            <button type="button" onClick={() => window.location.reload()}>Recargar administración</button>
          </section>
        </main>
      );
    }

    return this.props.children;
  }
}

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode><ErrorBoundary><App /></ErrorBoundary></React.StrictMode>,
);
