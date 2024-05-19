# This script generates documentation contents in all languages

$sourcePath = Get-Location
foreach ($dir in Get-ChildItem -Directory)
{
    if (Test-Path $dir\mkdocs.yml) { Set-Location $dir } else { return }
    Write-Host "Building help documentation contents from $($dir)"
    mkdocs build
    if (Test-Path $sourcePath\$dir\site\css\theme.css)
    {
        Set-Location $sourcePath\$dir\site\css
        $css = [IO.File]::ReadAllText("$sourcePath\$dir\site\css\theme.css")
        $px_regex = "max-width:\s*\d+px"
        $rem_regex = "max-width:\s*\d+rem"
        $rep = "max-width:100%"
        $new = $css -replace $px_regex, $rep
        $new = $new -replace $rem_regex, $rep
        $new | Out-File -FilePath "$sourcePath\$dir\site\css\theme.css" -Force -Encoding utf8
    }
    Set-Location $sourcePath
}
Write-Host "Site generation complete."