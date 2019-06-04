. ./Functions.ps1
$RootCauseID = "RC_BlockedFont"

Update-DiagRootCause -Id $RootCauseId -Detected ([bool](Get-BadFontPaths))