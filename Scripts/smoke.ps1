<#
Simple smoke test used by CI.
Checks: README exists at James-Mariolle/README.md and that there is at least one markdown file in the repo.
#>

$readme = Join-Path $PSScriptRoot '..\James-Mariolle\README.md'
if (-not (Test-Path $readme)) {
  Write-Error "README not found at $readme"
  exit 1
}

$mdFiles = Get-ChildItem -Recurse -Filter *.md | Where-Object { -not $_.PSIsContainer }
if ($mdFiles.Count -eq 0) {
  Write-Error "No markdown files found in repo"
  exit 1
}

Write-Output "Smoke check passed: README found and $($mdFiles.Count) markdown files present."