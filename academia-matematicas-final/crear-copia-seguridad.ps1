param([string]$Destino)

$ErrorActionPreference = 'Stop'
$projectRoot = $PSScriptRoot
$centralEnvFile = Join-Path $projectRoot '.env'
if (-not (Test-Path -LiteralPath $centralEnvFile)) { throw 'Falta el archivo .env de la raíz.' }
Get-Content -LiteralPath $centralEnvFile -Encoding utf8 | ForEach-Object {
  $line = $_.Trim()
  if ($line -and -not $line.StartsWith('#') -and $line.Contains('=')) {
    $parts = $line.Split('=', 2)
    [Environment]::SetEnvironmentVariable($parts[0].Trim(), $parts[1], 'Process')
  }
}
if (-not (Get-Command mysqldump -ErrorAction SilentlyContinue)) { throw 'mysqldump no está instalado.' }

$backupDirectory = if ($Destino) { [System.IO.Path]::GetFullPath($Destino) } else { Join-Path $projectRoot 'database\backups' }
New-Item -ItemType Directory -Path $backupDirectory -Force | Out-Null
$backupPath = Join-Path $backupDirectory "$($env:DB_NAME)-$(Get-Date -Format 'yyyyMMdd-HHmmss').sql"
$env:MYSQL_PWD = $env:DB_PASSWORD
& mysqldump "--host=$($env:DB_HOST)" "--port=$($env:DB_PORT)" "--user=$($env:DB_USER)" --single-transaction --no-tablespaces --routines --triggers --events --default-character-set=utf8mb4 --databases $env:DB_NAME --result-file=$backupPath
if ($LASTEXITCODE -ne 0) { throw 'mysqldump no pudo generar el respaldo.' }
Remove-Item Env:MYSQL_PWD -ErrorAction SilentlyContinue
$backup = Get-Item -LiteralPath $backupPath
if ($backup.Length -le 0) { throw 'El respaldo quedó vacío.' }
Write-Host "Respaldo creado: $($backup.FullName)" -ForegroundColor Green
