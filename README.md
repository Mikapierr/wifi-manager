# WiFi Manager - Android Ağ Yönetim Uygulaması

Bu uygulama, WiFi ağına bağlı olan tüm cihazları listeleyebilir, bunları engelleyebilir ve hız sınırları uygulayabilir.

## Özellikler

- 📱 **Cihaz Tarama**: WiFi ağındaki tüm cihazları otomatik olarak tespit eder
- 🚫 **Cihaz Engelleme**: İstenmeyen cihazların internet erişimini engeller
- ⚡ **Hız Sınırlandırma**: Cihazlara bandwidth limitleri uygular
- 📊 **Gerçek Zamanlı İzleme**: Cihazların online/offline durumunu takip eder
- 🔍 **Cihaz Tanıma**: MAC adresi ve hostname analizi ile cihaz tiplerini tahmin eder

## Gereksinimler

- **Root Erişimi**: Bu uygulama ağ yönetimi için root yetkilerine ihtiyaç duyar
- **Android 7.0+** (API Level 24+)
- **WiFi Bağlantısı**: Uygulama yalnızca WiFi ağlarında çalışır

## Kullanılan Teknolojiler

- **Kotlin**: Ana programlama dili
- **Android Architecture Components**: ViewModel, LiveData, Flow
- **Material Design 3**: Modern kullanıcı arayüzü
- **Coroutines**: Asenkron işlemler
- **Root Shell**: Sistem seviyesi komutlar

## Önemli Not

⚠️ **Bu uygulama yalnızca eğitim amaçlıdır**. Gerçek ağ yönetimi için kullanırken dikkatli olun ve yalnızca size ait ağlarda kullanın.

## Kurulum

1. Cihazınızı root yapın
2. APK dosyasını yükleyin
3. Gerekli izinleri verin
4. Root erişimini onaylayın

## Kullanım

1. **Tarama**: Uygulamayı açtığınızda otomatik olarak ağ taraması başlar
2. **Cihaz Yönetimi**: Listeden bir cihaz seçerek engelleme veya hız sınırı uygulayabilirsiniz
3. **İzleme**: Cihazların durumunu gerçek zamanlı olarak takip edebilirsiniz

## Teknik Detaylar

### Ağ Tarama
- ARP tablosu analizi (`/proc/net/arp`)
- ICMP ping testleri
- Hostname çözümleme

### Cihaz Engelleme
- iptables kuralları ile paket filtreleme
- IP tabanlı engelleme

### Hız Sınırlandırma
- Linux Traffic Control (tc) komutları
- HTB (Hierarchical Token Bucket) algoritması

## Güvenlik

- Tüm root komutları güvenli şekilde çalıştırılır
- Ağ değişiklikleri geri alınabilir
- Yerel ağda çalışır, dış bağlantı gerektirmez

## Sorumluluk Reddi

Bu uygulama eğitim amaçlı geliştirilmiştir. Yasa dışı veya zararlı amaçlarla kullanılması geliştiricinin sorumluluğunda değildir. Yalnızca size ait ağlarda kullanın.

## Lisans

Bu proje MIT lisansı altında yayınlanmıştır.
