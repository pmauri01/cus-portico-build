write-verbose "Get the latest product version by sifting through the version info objects from the build,then convert the object into an array"
$productVersion = get-childitem E:\Agent1\_work\17\b\*.dll | 
select-object -expandproperty versioninfo | 
select-object -property Productversion  -unique | 
convertto-csv -notypeinformation 

write-verbose "Product Version is the second array element"
$productVersion = $productVersion[1]

write-verbose "Remove leading and ending quotes"
$productVersion = $productVersion -replace '"',$null 

write-verbose "Find and replace the old occurrences of the version number in the .ism file"

$filename = "C:\Users\bweber\Documents\NetCreditInstall.ism"

(get-content $filename) | ForEach-Object {
    $env:Path = Get-ItemProperty $_.PSPath
    
    $oldProductVersion = $_ -split "(1.2.0.\d{2,})"
    $oldProductVersion = $oldProductVersion[1]

    $_ -replace "Credit Bureau Access for Credit Unions $oldProductVersion","Credit Bureau Access for Credit Unions $productVersion" `
    -replace "<row><td>ProductVersion</td><td>$oldProductVersion</td><td/></row>", "<row><td>ProductVersion</td><td>$productVersion</td><td/></row>"
        
    } | Set-Content $env:Path #foreach 