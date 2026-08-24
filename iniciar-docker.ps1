param(
  [switch]$NoBuild
)

$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$envFile = Join-Path $projectRoot '.env'

if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
  throw 'Docker no esta instalado.'
}
if (-not (Test-Path -LiteralPath $envFile)) { throw 'Falta el archivo .env de la raíz.' }
$ErrorActionPreference = 'Continue'
& docker info 2>$null | Out-Null
$dockerInfoExitCode = $LASTEXITCODE
$ErrorActionPreference = 'Stop'
if ($dockerInfoExitCode -ne 0) {
  throw 'Docker Desktop no esta activo. Abrelo y vuelve a ejecutar este script.'
}

$arguments = @('compose', '--env-file', $envFile, 'up', '-d')
if (-not $NoBuild) { $arguments += '--build' }
$ErrorActionPreference = 'Continue'
& docker @arguments
$composeExitCode = $LASTEXITCODE
$ErrorActionPreference = 'Stop'
if ($composeExitCode -ne 0) { throw 'Docker Compose no pudo levantar la plataforma.' }

docker compose --env-file $envFile ps
Write-Host ''
Write-Host 'Portal estudiantes: http://localhost:4610'
Write-Host 'Administracion:     http://localhost:4611'
Write-Host 'API Gateway:        http://localhost:4600'
Write-Host 'MySQL:              base instalada directamente en el servidor'
