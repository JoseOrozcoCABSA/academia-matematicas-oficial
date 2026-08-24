$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
foreach ($service in @('ai-service', 'api-gateway', 'identity-service', 'learning-service', 'practice-service')) {
  Push-Location (Join-Path $root $service)
  try { npm run check; if ($LASTEXITCODE) { exit $LASTEXITCODE }; npm test; if ($LASTEXITCODE) { exit $LASTEXITCODE }; npm run build; if ($LASTEXITCODE) { exit $LASTEXITCODE } }
  finally { Pop-Location }
}
foreach ($frontend in @('frontend-estudiantes', 'frontend-administracion')) {
  Push-Location (Join-Path $root $frontend)
  try { npm run build; if ($LASTEXITCODE) { exit $LASTEXITCODE } }
  finally { Pop-Location }
}
node (Join-Path $root 'scripts/validar-arquitectura.mjs'); if ($LASTEXITCODE) { exit $LASTEXITCODE }
node (Join-Path $root 'scripts/auditar-dependencias.mjs'); if ($LASTEXITCODE) { exit $LASTEXITCODE }
docker compose --project-directory $root config --quiet; if ($LASTEXITCODE) { exit $LASTEXITCODE }
Write-Host 'Validación de calidad completada.' -ForegroundColor Green
