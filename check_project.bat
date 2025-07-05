@echo off
echo WiFi Manager Proje Kontrol Scripti
echo ===================================
echo.

set PROJECT_DIR=WifiManager

echo Proje dizini kontrol ediliyor: %PROJECT_DIR%
if not exist "%PROJECT_DIR%" (
    echo HATA: Proje dizini bulunamadi!
    pause
    exit /b 1
)

echo.
echo Dosya yapisi kontrol ediliyor...
echo.

:: Ana dosyalar
echo [Ana Dosyalar]
if exist "%PROJECT_DIR%\build.gradle" (echo ✓ build.gradle) else (echo ✗ build.gradle EKSIK!)
if exist "%PROJECT_DIR%\settings.gradle" (echo ✓ settings.gradle) else (echo ✗ settings.gradle EKSIK!)
if exist "%PROJECT_DIR%\gradle.properties" (echo ✓ gradle.properties) else (echo ✗ gradle.properties EKSIK!)
if exist "%PROJECT_DIR%\gradlew.bat" (echo ✓ gradlew.bat) else (echo ✗ gradlew.bat EKSIK!)

echo.
echo [App Modulu]
if exist "%PROJECT_DIR%\app\build.gradle" (echo ✓ app/build.gradle) else (echo ✗ app/build.gradle EKSIK!)
if exist "%PROJECT_DIR%\app\src\main\AndroidManifest.xml" (echo ✓ AndroidManifest.xml) else (echo ✗ AndroidManifest.xml EKSIK!)

echo.
echo [Kotlin Dosyalari]
if exist "%PROJECT_DIR%\app\src\main\java\com\example\wifimanager\MainActivity.kt" (echo ✓ MainActivity.kt) else (echo ✗ MainActivity.kt EKSIK!)
if exist "%PROJECT_DIR%\app\src\main\java\com\example\wifimanager\model\NetworkDevice.kt" (echo ✓ NetworkDevice.kt) else (echo ✗ NetworkDevice.kt EKSIK!)
if exist "%PROJECT_DIR%\app\src\main\java\com\example\wifimanager\manager\NetworkManager.kt" (echo ✓ NetworkManager.kt) else (echo ✗ NetworkManager.kt EKSIK!)
if exist "%PROJECT_DIR%\app\src\main\java\com\example\wifimanager\utils\RootUtils.kt" (echo ✓ RootUtils.kt) else (echo ✗ RootUtils.kt EKSIK!)
if exist "%PROJECT_DIR%\app\src\main\java\com\example\wifimanager\adapter\DeviceAdapter.kt" (echo ✓ DeviceAdapter.kt) else (echo ✗ DeviceAdapter.kt EKSIK!)

echo.
echo [Layout Dosyalari]
if exist "%PROJECT_DIR%\app\src\main\res\layout\activity_main.xml" (echo ✓ activity_main.xml) else (echo ✗ activity_main.xml EKSIK!)
if exist "%PROJECT_DIR%\app\src\main\res\layout\item_device.xml" (echo ✓ item_device.xml) else (echo ✗ item_device.xml EKSIK!)

echo.
echo [Resource Dosyalari]
if exist "%PROJECT_DIR%\app\src\main\res\values\strings.xml" (echo ✓ strings.xml) else (echo ✗ strings.xml EKSIK!)
if exist "%PROJECT_DIR%\app\src\main\res\drawable\ic_scan.xml" (echo ✓ ic_scan.xml) else (echo ✗ ic_scan.xml EKSIK!)

echo.
echo [Gradle Wrapper]
if exist "%PROJECT_DIR%\gradle\wrapper\gradle-wrapper.properties" (echo ✓ gradle-wrapper.properties) else (echo ✗ gradle-wrapper.properties EKSIK!)

echo.
echo Sistem gereksinimleri kontrol ediliyor...
echo.

echo [Java]
java -version 2>nul
if %ERRORLEVEL% equ 0 (echo ✓ Java kurulu) else (echo ✗ Java KURULU DEGIL!)

echo.
echo [Android SDK]
if "%ANDROID_HOME%"=="" (
    echo ✗ ANDROID_HOME tanimli degil
    echo   Cozum: install_android_sdk.bat scriptini calistirin
) else (
    echo ✓ ANDROID_HOME: %ANDROID_HOME%
    if exist "%ANDROID_HOME%\platform-tools\adb.exe" (echo ✓ ADB mevcut) else (echo ✗ ADB bulunamadi)
)

echo.
echo ===================================
echo Kontrol tamamlandi!
echo.
echo Eger tum dosyalar mevcutsa su komutu calistirabilirsiniz:
echo build_manual.bat
echo.

pause
