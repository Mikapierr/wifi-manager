# WiFi Manager Build Rehberi

## 🎯 Android Studio Olmadan Build Yapma

### ⚡ Hızlı Çözüm: Online Build

1. **GitHub'a yükleyin:**
   ```bash
   cd C:\Users\lowsk\Desktop\aaa\WifiManager
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/KULLANICI_ADI/wifi-manager.git
   git push -u origin main
   ```

2. **GitHub Actions otomatik çalışacak ve APK oluşturacak!**
   - Actions sekmesinden build durumunu izleyin
   - Tamamlandığında APK'yi indirin

### 🔧 Lokal Build (Gelişmiş)

#### Gereksinimler:
- ✅ Java 17+ (mevcut: 21.0.7)
- ❌ Android SDK (eksik)
- ❌ Build Tools (eksik)

#### Android SDK Kurulumu:

1. **Command Line Tools indirin:**
   ```
   https://developer.android.com/studio#command-tools
   ```

2. **Kurulum:**
   ```powershell
   # SDK dizini oluştur
   mkdir $env:USERPROFILE\Android\Sdk
   
   # Command Line Tools çıkar
   # commandlinetools-win-xxxxxx_latest.zip dosyasını
   # $env:USERPROFILE\Android\Sdk\cmdline-tools\latest\ klasörüne çıkarın
   
   # Ortam değişkenlerini ayarla
   [Environment]::SetEnvironmentVariable("ANDROID_HOME", "$env:USERPROFILE\Android\Sdk", "User")
   [Environment]::SetEnvironmentVariable("ANDROID_SDK_ROOT", "$env:USERPROFILE\Android\Sdk", "User")
   
   # SDK bileşenlerini yükle
   $env:USERPROFILE\Android\Sdk\cmdline-tools\latest\bin\sdkmanager.bat "platform-tools" "platforms;android-34" "build-tools;34.0.0"
   
   # Lisansları kabul et
   $env:USERPROFILE\Android\Sdk\cmdline-tools\latest\bin\sdkmanager.bat --licenses
   ```

3. **Build:**
   ```powershell
   cd C:\Users\lowsk\Desktop\aaa\WifiManager
   .\gradlew.bat assembleDebug
   ```

### 📱 Sonuç:
- **Debug APK:** `app\build\outputs\apk\debug\app-debug.apk`
- **Release APK:** `app\build\outputs\apk\release\app-release.apk`

### 🚀 Test:
1. APK'yi Android cihaza yükleyin
2. Root izni verin
3. WiFi ağına bağlanın
4. Uygulamayı açın

### ⚠️ Notlar:
- Uygulama root gerektiriyor
- Sadece WiFi ağlarında çalışır
- Eğitim amaçlıdır

### 🔗 Alternatif Build Yöntemleri:
1. **Android Studio** (En kolay)
2. **GitHub Actions** (Online, ücretsiz)
3. **Termux** (Android'de build)
4. **Docker** (Konteynerda build)
