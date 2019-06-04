Function Get-BadFontPaths()
{
    $BadFontPaths = @()

    $SearchLocations = @(
        "$env:LocalAppData\Microsoft\Windows\Fonts",
        "$env:SystemRoot\Fonts"
    )

    $SearchLocations | ForEach-Object { 
        Write-DiagProgress "Scanning $_"

        Get-ChildItem -Recurse -Filter *.ttf $_ | ForEach-Object {
            $Stream = $_.FullName + ":Zone.Identifier"
            $ZoneId = Get-Content $Stream -ErrorAction Ignore
            if($ZoneId -like "*ZoneTransfer*") {
                $_.FullName
            }
        }
    }
}