# Usage:  .\modernize_logo.ps1 [logo.png]
# Saves the redesigned SVG next to the PNG (same name, .svg extension).
# NOTE: this file is ASCII-only on purpose (Windows PowerShell 5.1 misreads UTF-8 without BOM).
param([string]$Src)
$ErrorActionPreference = "Stop"

if (-not $Src) {
    $pngs = @(Get-ChildItem -LiteralPath . -Filter *.png)
    if ($pngs.Count -ne 1) { throw "Please specify the PNG file, e.g. .\modernize_logo.ps1 logo.png" }
    $Src = $pngs[0].FullName
}
if (-not (Test-Path -LiteralPath $Src)) { throw "File not found: $Src" }
$Src    = (Resolve-Path -LiteralPath $Src).Path
$Out    = [IO.Path]::ChangeExtension($Src, ".svg")
$Prompt = Get-Content -LiteralPath (Join-Path $PSScriptRoot "prompt.md") -Raw -Encoding UTF8

# Work in a temp folder with ASCII file names to avoid encoding problems.
$Work = Join-Path $env:TEMP ("logo_" + [guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory $Work | Out-Null
Copy-Item -LiteralPath $Src (Join-Path $Work "input.png")
Push-Location $Work
try {
    claude -p $Prompt --allowedTools "Read,Write" --permission-mode acceptEdits
    if ($LASTEXITCODE -ne 0) { throw "claude exited with code $LASTEXITCODE" }
    if (-not (Test-Path "output.svg")) { throw "output.svg was not generated" }
    Copy-Item "output.svg" -Destination $Out -Force
    Write-Host "Saved: $Out"
} finally {
    Pop-Location
    Remove-Item $Work -Recurse -Force -ErrorAction SilentlyContinue
}
