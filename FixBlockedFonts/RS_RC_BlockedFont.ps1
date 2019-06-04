. ./Functions.ps1

Get-BadFontPaths | ForEach-Object {
    Write-DiagProgress "Removing Mark of the Web from " + $_
    Unblock-File $_
}