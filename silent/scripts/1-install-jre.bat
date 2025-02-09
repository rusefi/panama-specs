Powershell.exe -executionpolicy remotesigned -File download_jre_ps2.ps1


elevate-and-wait.bat msiexec /i OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi /li install.log /q
java -version
