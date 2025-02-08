$ProgressPreference = "SilentlyContinue"
# todo: learn how to use variables and reduce copy-paste?
"Downloading JRE..."
Invoke-WebRequest http://lazyharness.com/panama-silent/OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi  -OutFile OpenJDK17U-jre_x64_windows_hotspot_17.0.9_9.msi
"Downloaded JRE!"
