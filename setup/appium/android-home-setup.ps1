# กำหนด ANDROID_HOME (แก้ path ตามที่ติดตั้งจริง)
$env:ANDROID_HOME = "$env:USERPROFILE\AppData\Local\Android\Sdk"

# เพิ่ม emulator, tools, platform-tools ลงใน PATH ชั่วคราว
$env:Path = "$env:ANDROID_HOME\emulator;$env:ANDROID_HOME\platform-tools;$env:Path"

Write-Output "ANDROID_HOME set to: $env:ANDROID_HOME"
Write-Output "PATH updated with Android SDK tools"

# ตรวจสอบว่า adb ใช้งานได้มั้ย
if (Get-Command adb -ErrorAction SilentlyContinue) {
    Write-Output "✅ adb detected: $(adb version | Select-Object -First 1)"
} else {
    Write-Output "❌ adb not found. Please check your ANDROID_HOME path."
}
