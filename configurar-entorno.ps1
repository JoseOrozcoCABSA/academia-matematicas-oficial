$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$envFile = Join-Path $root '.env'
$exampleFile = Join-Path $root '.env.example'
if (-not (Test-Path -LiteralPath $envFile)) { Copy-Item -LiteralPath $exampleFile -Destination $envFile }

function Get-EnvValue([string]$Name) {
  $line = Get-Content -LiteralPath $envFile -Encoding utf8 | Where-Object { $_ -match "^$([regex]::Escape($Name))=" } | Select-Object -Last 1
  if ($line) { return $line.Substring($Name.Length + 1) }
  return ''
}
function Set-EnvValue([string]$Name, [string]$Value) {
  $lines = @(Get-Content -LiteralPath $envFile -Encoding utf8)
  $found = $false
  $updated = foreach ($line in $lines) {
    if ($line -match "^$([regex]::Escape($Name))=") { $found = $true; "$Name=$Value" } else { $line }
  }
  if (-not $found) { $updated += "$Name=$Value" }
  Set-Content -LiteralPath $envFile -Value $updated -Encoding utf8
}
function New-SecureSecret {
  $bytes = New-Object byte[] 32
  $generator = [Security.Cryptography.RandomNumberGenerator]::Create()
  try { $generator.GetBytes($bytes) } finally { $generator.Dispose() }
  return [BitConverter]::ToString($bytes).Replace('-', '').ToLowerInvariant()
}

$dbPassword = if ($env:DB_PASSWORD) { $env:DB_PASSWORD } else { Get-EnvValue 'DB_PASSWORD' }
if (-not $dbPassword -or $dbPassword.StartsWith('configure-')) {
  $secure = Read-Host 'Contraseña MySQL' -AsSecureString
  $dbPassword = [Net.NetworkCredential]::new('', $secure).Password
}
if (-not $dbPassword) { throw 'DB_PASSWORD no puede quedar vacío.' }
Set-EnvValue 'DB_PASSWORD' $dbPassword

foreach ($key in @('JWT_SECRET', 'INTERNAL_SERVICE_KEY')) {
  $value = Get-EnvValue $key
  if (-not $value -or $value.StartsWith('configure-') -or $value.Length -lt 32) {
    Set-EnvValue $key (New-SecureSecret)
    Write-Host "OK: $key generado de forma segura."
  }
}
Write-Host "OK: entorno preparado en $envFile."
