$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$envFile = Join-Path $projectRoot '.env'

docker compose --env-file $envFile down
Write-Host 'Contenedores detenidos. El volumen de MySQL se conservo.'
