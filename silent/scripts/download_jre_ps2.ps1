# https://stackoverflow.com/questions/31523709/downloading-files-with-powershell-2-0-on-windows-7

$url = "http://lazyharness.com/panama-silent/OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi" 
$path = "OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi" 
# param([string]$url, [string]$path) 

if(!(Split-Path -parent $path) -or !(Test-Path -pathType Container (Split-Path -parent $path))) { 
$targetFile = Join-Path $pwd (Split-Path -leaf $path) 
} 

(New-Object Net.WebClient).DownloadFile($url, $path) 
$path