<?php
declare(strict_types=1);
?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Juego interactivo para aprender a resolver ecuaciones de primer grado.">
    <title>La Balanza de las Ecuaciones</title>
    <link rel="stylesheet" href="styles.css?v=11">
</head>
<body class="<?= isset($_GET['embed']) ? 'embed-mode' : '' ?>">
    <div class="sky-decoration sky-decoration-one"></div>
    <div class="sky-decoration sky-decoration-two"></div>

    <main class="game-shell">
        <header class="hero">
            <div>
                <p class="eyebrow">Academia CABSA presenta</p>
                <h1>La Balanza de las Ecuaciones</h1>
                <p class="hero-copy">Descubre cuánto vale cada caja sin desequilibrar los dos lados.</p>
            </div>
            <div class="score-card" aria-label="Marcador">
                <span>Estrellas</span>
                <strong id="score">0</strong>
            </div>
        </header>

        <section class="lesson-card" aria-labelledby="lesson-title">
            <div class="lesson-heading">
                <div>
                    <p class="step-label">Misión actual</p>
                    <h2 id="lesson-title">Resuelve la ecuación</h2>
                </div>
                <div class="progress-wrap">
                    <span id="progress-text">Reto 1 de 8</span>
                    <div class="progress-track">
                        <div id="progress-bar" class="progress-bar"></div>
                    </div>
                </div>
            </div>

            <div class="equation-panel">
                <span id="equation" class="equation">2x + 4 = 12</span>
            </div>

            <p id="instruction" class="instruction">
                Cada caja vale lo mismo. Quita la misma cantidad de manzanas en ambos lados.
            </p>

            <div class="balance" id="balance">
                <div class="balance-side">
                    <h3>Lado izquierdo</h3>
                    <div id="left-items" class="items" aria-live="polite"></div>
                    <div id="left-expression" class="expression-label"></div>
                </div>

                <div class="balance-center" aria-hidden="true">
                    <div class="balance-sign">=</div>
                    <div class="balance-post"></div>
                    <div class="balance-base"></div>
                </div>

                <div class="balance-side">
                    <h3>Lado derecho</h3>
                    <div id="right-items" class="items" aria-live="polite"></div>
                    <div id="right-expression" class="expression-label"></div>
                </div>
            </div>

            <div id="phase-one-complete" class="phase-complete" hidden>
                <span class="phase-check">✓</span>
                <strong>Fase 1 completada</strong>
                <span id="phase-one-summary"></span>
            </div>

            <section id="distribution-zone" class="distribution-zone" hidden>
                <div class="source-crate-wrap">
                    <h3>Caja grande: manzanas para repartir</h3>
                    <div id="source-crate" class="source-crate">
                        <div id="source-apples" class="source-apples"></div>
                    </div>
                    <p id="source-count"></p>
                </div>

                <div class="distribution-arrow" aria-hidden="true">→</div>

                <div class="target-boxes-wrap">
                    <div id="target-boxes" class="target-boxes"></div>
                </div>

                <div class="distribution-equals" aria-hidden="true">=</div>

                <div class="reference-wrap">
                    <h3>Total inmóvil</h3>
                    <div id="reference-apples" class="reference-apples"></div>
                    <p id="reference-count"></p>
                </div>
            </section>

            <p id="feedback" class="feedback" aria-live="assertive"></p>

            <button id="next-button" class="button button-primary next-button" type="button" hidden>
                Siguiente reto
            </button>
        </section>

        <section class="equation-list" aria-labelledby="equation-list-title">
            <div>
                <p class="step-label">Ruta de aprendizaje</p>
                <h2 id="equation-list-title">Lista de ecuaciones</h2>
            </div>
            <div id="challenge-list" class="challenge-list"></div>
        </section>
    </main>

    <template id="box-template">
        <div class="mystery-box" role="button" tabindex="0" aria-label="Caja que representa x">
            <span class="box-question">?</span>
            <small>x</small>
            <div class="box-contents"></div>
            <span class="box-count"></span>
        </div>
    </template>

    <template id="apple-template">
        <div class="apple" role="button" tabindex="0" draggable="true" aria-label="Una manzana">
            <span class="apple-leaf"></span>
            <span class="apple-body"></span>
        </div>
    </template>

    <script src="app.js?v=11"></script>
</body>
</html>
