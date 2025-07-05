@echo off
echo Android SDK Kurulum Scripti
echo =============================

:: SDK dizini oluştur
set ANDROID_HOME=%USERPROFILE%\Android\Sdk
set ANDROID_SDK_ROOT=%ANDROID_HOME%
mkdir "%ANDROID_HOME%" 2>nul

:: Command Line Tools dizini oluştur
mkdir "%ANDROID_HOME%\cmdline-tools\latest" 2>nul

echo.
echo 1. Android Command Line Tools'u indirin:
echo    https://developer.android.com/studio#command-tools
echo.
echo 2. commandlinetools-win-xxxxxx_latest.zip dosyasini indirin
echo.
echo 3. Zip dosyasini su klasore cikarin:
echo    %ANDROID_HOME%\cmdline-tools\latest\
echo.
echo 4. Bu scripti tekrar calistirin (install_android_sdk.bat)
echo.

if exist "%ANDROID_HOME%\cmdline-tools\latest\bin\sdkmanager.bat" (
    echo SDK Manager bulundu. Gerekli paketleri yukluyor...
    
    :: SDK Manager ile gerekli paketleri yükle
    "%ANDROID_HOME%\cmdline-tools\latest\bin\sdkmanager.bat" "platform-tools" "platforms;android-34" "build-tools;34.0.0"
    
    :: Ortam değişkenlerini ayarla
    setx ANDROID_HOME "%ANDROID_HOME%"
    setx ANDROID_SDK_ROOT "%ANDROID_HOME%"
    setx PATH "%PATH%;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\cmdline-tools\latest\bin"
    
    echo.
    echo Android SDK basariyla kuruldu!
    echo ANDROID_HOME: %ANDROID_HOME%
    echo.
    echo Terminali kapatip yeniden acin ve bu komutu calistirin:
    echo cd /d "C:\Users\lowsk\Desktop\aaa\WifiManager"
    echo gradlew.bat assembleDebug
    
) else (
    echo Command Line Tools henuz yuklu degil.
    echo Yukaridaki adimlari takip edin.
)

pause
