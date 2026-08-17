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

if (-not (Get-Command mysql -ErrorAction SilentlyContinue)) { throw 'El cliente mysql no está instalado.' }
$env:MYSQL_PWD = $env:DB_PASSWORD
$arguments = @("--host=$($env:DB_HOST)", "--port=$($env:DB_PORT)", "--user=$($env:DB_USER)", '--default-character-set=utf8mb4')

& mysql @arguments "--database=$($env:DB_NAME)" -e 'SELECT 1' 2>$null | Out-Null
if ($LASTEXITCODE -ne 0) { throw "La base $($env:DB_NAME) no existe o el usuario no tiene acceso." }

$tableCount = (& mysql @arguments "--database=$($env:DB_NAME)" --batch --skip-column-names -e 'SELECT COUNT(*) FROM information_schema.tables WHERE table_schema=DATABASE();').Trim()
if ($tableCount -eq '0') {
  $initFile = Join-Path $projectRoot 'database\init\01-academia-matematicas-soa.sql'
  $command = 'mysql --host="' + $env:DB_HOST + '" --port="' + $env:DB_PORT + '" --user="' + $env:DB_USER + '" --default-character-set=utf8mb4 < "' + $initFile + '"'
  & cmd.exe /d /s /c $command
  if ($LASTEXITCODE -ne 0) { throw 'No fue posible cargar la estructura inicial.' }
  Write-Host 'Estructura y datos iniciales cargados.' -ForegroundColor Green
}
else {
  Write-Host "La base ya contiene $tableCount tablas; no se sobrescribió." -ForegroundColor DarkYellow
}
Remove-Item Env:MYSQL_PWD -ErrorAction SilentlyContinue
