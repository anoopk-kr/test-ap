param(
[string]$infile
)
$outfile=($infile -replace ".xml", "_v2016.xml" )
echo $infile
echo $outfile
(get-content $infile) | foreach-object {$_ -replace "nsoftware.SFTP v4", "nsoftware.SFTP 2016"} | foreach-object {$_ -replace "7142827c-f326-4248-a478-8748270376f7", "7571227c-f326-4248-a478-8748270376f7"}  |  foreach-object {$_ -replace "nsoftware.PowerShell v4", "nsoftware.PowerShell 2016"} |foreach-object {$_ -replace "7142887c-f326-4248-a478-8748270376f7", "7571287c-f326-4248-a478-8748270376f7"} |set-content $outfile
