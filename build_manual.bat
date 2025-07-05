@echo off
echo WiFi Manager Manuel Build Scripti
echo ===================================
echo.

echo Bu script Android uygulamasini manuel olarak build etmek icin hazirlanmistir.
echo.
echo Gereksinimler:
echo - Java JDK 8+ (KURULU ✓)
echo - Android SDK (GEREKLI ✗)
echo - Gradle (Otomatik indirilecek)
echo.

echo Mevcut durum:
java -version
echo.

if not exist "WifiManager\gradlew.bat" (
    echo HATA: WiFi Manager projesi bulunamadi!
    echo Lutfen once projeyi olusturun.
    pause
    exit /b 1
)

echo Android SDK kontrolu...
if "%ANDROID_HOME%"=="" (
    echo.
    echo UYARI: ANDROID_HOME ortam degiskeni tanimli degil!
    echo.
    echo Cozum 1: Android Studio yukleyin ve SDK'yi kurun
    echo Cozum 2: install_android_sdk.bat scriptini calistirin
    echo.
    echo Android SDK olmadan build yapilamaz.
    pause
    exit /b 1
)

echo.
echo Build baslatiliyor...
cd WifiManager

echo.
echo 1. Gradle Wrapper indiriliyor...
call gradlew.bat --version

echo.
echo 2. Dependencies indiriliyor...
call gradlew.bat dependencies

echo.
echo 3. Debug APK build ediliyor...
call gradlew.bat assembleDebug

if %ERRORLEVEL% equ 0 (
    echo.
    echo ================================
    echo BUILD BASARILI! 🎉
    echo ================================
    echo.
    echo APK dosyasi su konumda:
    echo %CD%\app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo Boyutu:
    dir "app\build\outputs\apk\debug\app-debug.apk" | find "app-debug.apk"
    echo.
) else (
    echo.
    echo ================================
    echo BUILD HATASI! ❌
    echo ================================
    echo.
    echo Lutfen hata mesajlarini kontrol edin.
)

pause
