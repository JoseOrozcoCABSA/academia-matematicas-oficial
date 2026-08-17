<?php
declare(strict_types=1);

header('Content-Type: application/json; charset=utf-8');
header('Cache-Control: no-store');

$action = $_GET['action'] ?? 'challenges';

if ($action === 'challenges') {
    $challenges = [
        ['a' => 3, 'b' => 5, 'c' => 17],
        ['a' => 2, 'b' => 4, 'c' => 12],
        ['a' => 4, 'b' => 1, 'c' => 13],
        ['a' => 2, 'b' => 6, 'c' => 20],
        ['a' => 5, 'b' => 3, 'c' => 23],
        ['a' => 3, 'b' => 5, 'c' => 26],
        ['a' => 4, 'b' => 4, 'c' => 32],
        ['a' => 5, 'b' => 5, 'c' => 40],
    ];

    echo json_encode(
        ['challenges' => $challenges],
        JSON_UNESCAPED_UNICODE | JSON_THROW_ON_ERROR
    );
    exit;
}

if ($action === 'score' && $_SERVER['REQUEST_METHOD'] === 'POST') {
    $payload = json_decode(file_get_contents('php://input'), true);
    $score = filter_var($payload['score'] ?? null, FILTER_VALIDATE_INT);
    $solved = filter_var($payload['solved'] ?? null, FILTER_VALIDATE_INT);

    if ($score === false || $solved === false || $score < 0 || $solved < 0) {
        http_response_code(422);
        echo json_encode(['ok' => false, 'message' => 'Puntuación inválida']);
        exit;
    }

    echo json_encode([
        'ok' => true,
        'score' => $score,
        'solved' => $solved,
    ]);
    exit;
}

http_response_code(404);
echo json_encode(['ok' => false, 'message' => 'Acción no encontrada']);
