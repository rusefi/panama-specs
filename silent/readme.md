https://github.com/adoptium/temurin17-binaries/releases/

msiexec /i <package>.msi REINSTALL=ALL /quiet


msiexec /i OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi REINSTALL=ALL /quiet


elevate.bat msiexec /i OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi /li install.log /q

elevate.bat msiexec /i OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi /li install.log /q


mkdir %userprofile%\.rusEFI\setup
download OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9





cd %userprofile%