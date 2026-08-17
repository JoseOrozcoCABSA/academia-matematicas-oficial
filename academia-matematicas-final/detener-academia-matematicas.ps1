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

$ports = @($env:GATEWAY_PORT, $env:LEARNING_PORT, $env:PRACTICE_PORT, $env:AI_PORT, $env:IDENTITY_PORT, $env:STUDENT_PORT, $env:ADMIN_PORT) | ForEach-Object { [int]$_ }

foreach ($port in $ports) {
    $listeners = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue

    foreach ($listener in $listeners) {
        Stop-Process -Id $listener.OwningProcess -Force
        Write-Host "Proceso del puerto $port detenido." -ForegroundColor DarkYellow
    }
}
