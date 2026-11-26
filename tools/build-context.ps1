<#
.SYNOPSIS
  Bundles project context into one Markdown file for web-chat AIs (ChatGPT, Claude.ai, Gemini).
.DESCRIPTION
  Concatenates AGENTS.md, status/, docs/ (incl. decisions) and prompts/ into dist/context-bundle.md.
  docs/founder-profile.md is excluded unless -IncludeProfile is passed.
  Never add files containing secrets to the include list.
.EXAMPLE
  powershell -ExecutionPolicy Bypass -File .\tools\build-context.ps1
  powershell -ExecutionPolicy Bypass -File .\tools\build-context.ps1 -IncludeProfile
#>
param(
    [switch]$IncludeProfile
)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$outDir = Join-Path $root 'dist'
$outFile = Join-Path $outDir 'context-bundle.md'

# Ordered list: most important context first.
$files = @(
    'AGENTS.md'
    'status/NOW.md'
    'status/log.md'
    'docs/01-product-brief.md'
    'docs/02-swot.md'
    'docs/03-roadmap.md'
    'docs/04-architecture.md'
    'docs/05-pricing.md'
    'docs/06-go-to-market.md'
)
$files += Get-ChildItem -Path (Join-Path $root 'docs/decisions') -Filter '*.md' |
    Sort-Object Name | ForEach-Object { "docs/decisions/$($_.Name)" }
if ($IncludeProfile) { $files += 'docs/founder-profile.md' }
$files += 'prompts/session-start.md'

New-Item -ItemType Directory -Force -Path $outDir | Out-Null

$sb = New-Object System.Text.StringBuilder
[void]$sb.AppendLine('# Project Context Bundle: Agency AI Workspace')
[void]$sb.AppendLine('')
[void]$sb.AppendLine("Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm'). Source of truth is the project folder; this file is a snapshot.")
[void]$sb.AppendLine('Each section below is one file, marked with its path.')
[void]$sb.AppendLine('')

foreach ($rel in $files) {
    $path = Join-Path $root $rel
    if (-not (Test-Path $path)) { Write-Warning "Missing: $rel"; continue }
    [void]$sb.AppendLine('')
    [void]$sb.AppendLine('---')
    [void]$sb.AppendLine("<!-- FILE: $rel -->")
    [void]$sb.AppendLine('')
    [void]$sb.AppendLine((Get-Content -Path $path -Raw -Encoding UTF8))
}

# Write UTF-8 without BOM so every AI tool reads it cleanly.
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($outFile, $sb.ToString(), $utf8NoBom)

$sizeKb = [math]::Round((Get-Item $outFile).Length / 1KB, 1)
Write-Host "Wrote $outFile ($($files.Count) files, $sizeKb KB)"
if (-not $IncludeProfile) { Write-Host 'Founder profile excluded (use -IncludeProfile to add it).' }
