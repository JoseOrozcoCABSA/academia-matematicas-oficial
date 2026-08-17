$ErrorActionPreference = 'Stop'

$projectRoot = $PSScriptRoot
& (Join-Path $projectRoot 'configurar-entorno.ps1')
$centralEnvFile = Join-Path $projectRoot '.env'
if (-not (Test-Path -LiteralPath $centralEnvFile)) { throw 'Falta el archivo .env de la raíz.' }
Get-Content -LiteralPath $centralEnvFile -Encoding utf8 | ForEach-Object {
    $line = $_.Trim()
    if ($line -and -not $line.StartsWith('#') -and $line.Contains('=')) {
        $parts = $line.Split('=', 2)
        [Environment]::SetEnvironmentVariable($parts[0].Trim(), $parts[1], 'Process')
    }
}
$logDirectory = Join-Path $projectRoot 'runtime-logs'
New-Item -ItemType Directory -Force -Path $logDirectory | Out-Null

$applications = @(
    @{ Name = 'learning-service'; Port = [int]$env:LEARNING_PORT; Directory = 'learning-service'; Command = 'node'; Arguments = 'dist/server.js' },
    @{ Name = 'practice-service'; Port = [int]$env:PRACTICE_PORT; Directory = 'practice-service'; Command = 'node'; Arguments = 'dist/server.js' },
    @{ Name = 'ai-service'; Port = [int]$env:AI_PORT; Directory = 'ai-service'; Command = 'node'; Arguments = 'dist/server.js' },
    @{ Name = 'identity-service'; Port = [int]$env:IDENTITY_PORT; Directory = 'identity-service'; Command = 'node'; Arguments = 'dist/server.js' },
    @{ Name = 'api-gateway'; Port = [int]$env:GATEWAY_PORT; Directory = 'api-gateway'; Command = 'node'; Arguments = 'dist/server.js' },
    @{ Name = 'frontend-estudiantes'; Port = [int]$env:STUDENT_PORT; Directory = 'frontend-estudiantes'; Command = 'npm.cmd'; Arguments = "run dev -- --port $($env:STUDENT_PORT)" },
    @{ Name = 'frontend-administracion'; Port = [int]$env:ADMIN_PORT; Directory = 'frontend-administracion'; Command = 'npm.cmd'; Arguments = "run dev -- --port $($env:ADMIN_PORT)" }
)

foreach ($application in $applications) {
    $listener = Get-NetTCPConnection -LocalPort $application.Port -State Listen -ErrorAction SilentlyContinue

    if ($listener) {
        Write-Host "$($application.Name) ya está activo en el puerto $($application.Port)." -ForegroundColor DarkYellow
        continue
    }

    $workingDirectory = Join-Path $projectRoot $application.Directory
    $standardOutput = Join-Path $logDirectory "$($application.Name).out.log"
    $standardError = Join-Path $logDirectory "$($application.Name).err.log"

    if ($application.Name -eq 'frontend-estudiantes') { $env:VITE_API_URL = $env:VITE_STUDENT_API_URL }
    elseif ($application.Name -eq 'frontend-administracion') { $env:VITE_API_URL = $env:VITE_ADMIN_API_URL }
    else { Remove-Item Env:VITE_API_URL -ErrorAction SilentlyContinue }

    Start-Process `
        -FilePath $application.Command `
        -ArgumentList $application.Arguments `
        -WorkingDirectory $workingDirectory `
        -WindowStyle Hidden `
        -RedirectStandardOutput $standardOutput `
        -RedirectStandardError $standardError

    Write-Host "Iniciando $($application.Name) en el puerto $($application.Port)..." -ForegroundColor Cyan
}

Remove-Item Env:VITE_API_URL -ErrorAction SilentlyContinue

Start-Sleep -Seconds 3

Write-Host ''
Write-Host 'Academia Matemáticas CABSA está disponible en:' -ForegroundColor Green
Write-Host "  Estudiantes:    http://localhost:$($env:STUDENT_PORT)"
Write-Host "  Administración: http://localhost:$($env:ADMIN_PORT)"
Write-Host "  API Gateway:    http://localhost:$($env:GATEWAY_PORT)"
