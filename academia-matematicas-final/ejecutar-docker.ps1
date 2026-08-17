param(
  [switch]$NoBuild
)

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
& (Join-Path $projectRoot 'configurar-entorno.ps1')
& (Join-Path $projectRoot 'crear-base-datos.ps1')
& (Join-Path $projectRoot 'iniciar-docker.ps1') -NoBuild:$NoBuild
