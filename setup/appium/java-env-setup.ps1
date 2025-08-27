$javaDir = "C:\Program Files\Java\jdk-17"

# Set JAVA_HOME
[System.Environment]::SetEnvironmentVariable("JAVA_HOME", $javaDir, "Machine")

# Get current PATH and append new bin path
$currentPath = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
$newPath = "$currentPath;$javaDir\bin"

[System.Environment]::SetEnvironmentVariable("Path", $newPath, "Machine")

Write-Host "`n✅ JAVA_HOME และ PATH ถูกตั้งค่าแล้ว!" -ForegroundColor Green
Write-Host "JAVA_HOME = $javaDir"
Write-Host "PATH += $javaDir\bin`n"