Powershell.exe -executionpolicy remotesigned -File download_jre.ps1


elevate.bat msiexec /i OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi /li install.log /q
java -version
