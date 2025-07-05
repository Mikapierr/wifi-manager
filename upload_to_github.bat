@echo off
echo WiFi Manager - GitHub'a Yükleme Scripti
echo ========================================

echo Git kurulu mu kontrol ediliyor...
git --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo HATA: Git kurulu değil!
    echo.
    echo Lütfen Git'i kurun:
    echo https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo.
echo Git kurulu ✓
echo.

set /p GITHUB_USERNAME="GitHub kullanıcı adınızı girin: "
set REPO_URL=https://github.com/%GITHUB_USERNAME%/wifi-manager.git

echo.
echo Repo URL: %REPO_URL%
echo.

cd /d "C:\Users\lowsk\Desktop\aaa\WifiManager"

echo Git repository başlatılıyor...
git init

echo Dosyalar Git'e ekleniyor...
git add .

echo Commit oluşturuluyor...
git commit -m "Initial commit - WiFi Manager Android App"

echo Branch adı değiştiriliyor...
git branch -M main

echo GitHub'a bağlanıyor...
git remote add origin %REPO_URL%

echo GitHub'a yükleniyor...
git push -u origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo ================================
    echo BAŞARILI! 🎉
    echo ================================
    echo.
    echo Proje GitHub'a yüklendi: %REPO_URL%
    echo.
    echo GitHub Actions otomatik başlayacak!
    echo 5-10 dakika sonra APK hazır olacak.
    echo.
) else (
    echo.
    echo HATA: Yükleme başarısız!
    echo.
    echo Muhtemelen:
    echo 1. GitHub'da repository oluşturmadınız
    echo 2. Kullanıcı adı yanlış
    echo 3. GitHub şifresi/token gerekli
    echo.
)

pause
