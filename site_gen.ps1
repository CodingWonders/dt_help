# This script generates documentation contents in all languages

$sourcePath = Get-Location
foreach ($dir in Get-ChildItem -Directory)
{
    if (Test-Path $dir\mkdocs.yml) { Set-Location $dir } else { return }
    Write-Host "Building help documentation contents from $($dir)"
    mkdocs build
    Set-Location $sourcePath
}
Write-Host "Site generation complete."