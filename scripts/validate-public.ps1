param(
  [string]$Root = "."
)

$ErrorActionPreference = "Stop"
$rootPath = Resolve-Path $Root

Write-Host "Validando JSON publico..."
Get-ChildItem -Path (Join-Path $rootPath "data"), (Join-Path $rootPath "docs") -Recurse -Filter *.json | ForEach-Object {
  Get-Content -Raw $_.FullName | ConvertFrom-Json | Out-Null
}

Write-Host "Validando JavaScript..."
node --check (Join-Path $rootPath "app.js") | Out-Null

Write-Host "Validando manifests..."
Get-ChildItem -Path (Join-Path $rootPath "data") -Recurse -Filter manifest.json | ForEach-Object {
  $manifestPath = $_.FullName
  $manifestBase = Split-Path $manifestPath
  $manifest = Get-Content -Raw $manifestPath | ConvertFrom-Json
  foreach ($file in $manifest.files) {
    $target = Join-Path $manifestBase $file.path
    if (!(Test-Path $target)) {
      throw "Arquivo de manifest nao encontrado: $target"
    }
    $actual = (Get-FileHash -Algorithm SHA256 $target).Hash.ToLower()
    if ($actual -ne $file.hash) {
      throw "Hash divergente em $manifestPath -> $($file.path)"
    }
  }
}

Write-Host "Varredura de marcadores sensiveis..."
$pattern = 'C:\\|IgorPC|http://72|127\.0\.0\.1|Bearer|pcp_|OPENAI_API_KEY|ANTHROPIC_API_KEY|password|senha|\.secrets|\.env '
$hits = Get-ChildItem -Path $rootPath -Recurse -File |
  Where-Object {
    $_.FullName -notmatch '\\.git\\' -and
    $_.FullName -notmatch '\\node_modules\\' -and
    $_.FullName -notmatch '\\.artifacts\\' -and
    $_.FullName -ne $PSCommandPath -and
    $_.Name -ne '.gitignore'
  } |
  Select-String -Pattern $pattern -CaseSensitive:$false

if ($hits) {
  $hits | ForEach-Object { Write-Host "$($_.Path):$($_.LineNumber): $($_.Line.Trim())" }
  throw "Marcador sensivel encontrado."
}

Write-Host "Validacao publica concluida."
