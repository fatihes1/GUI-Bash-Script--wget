# GUI Bash Script --wget
[Click here](EN_README.md) for English README.
Bash script programming - GUI for wget command
## GUI Nedir?
**GUI** (Graphical User Interface), Grafiksel Kullanıcı Arayüzü, elektronik cihazların simgeler, ikonlar ve diğer görsel grafikler yardımıyla kullanmasına yardımcı olması amacıyla geliştirilmiş tasarımlardır. GUI öncesi komut bazlı işletim sistemi kullanılan eski nesil bilgisayarlar ve elektronik cihazlarda herhangi bir işlemi gerçekleştirmek için komut satırı kullanılıyordu. Kullanıcılar bilgisayar üzerindeki her işlemi  klavye  üzerinden ve komutları kullanarak gerçekleştiriyordu.

Daha sonra kullanıcıların daha rahat kişisel bilgisayar kullanabilmesi için  **1981** yılında aralarında  _Alan Kay_,  _Douglas Engelbart_ ve bir grup araştırmacının yer aldığı grup  **Xerox PARC**'da  ilk GUI'yi geliştirmiştir.

## wget Komutu Nedir?

Wget, kullanıcı sistemde oturum açmamış olsa bile sunucudan dosya indirmek için kullanılan ve mevcut işlemi engellemeden arka planda çalışabilen, etkileşimli olmayan ağ indiricisidir.

- **GNU wget**, dosyaların Web'den etkileşimli olmayan indirilmesi için **ücretsiz** bir yardımcı programdır. **HTTP**, **HTTPS** ve **FTP** protokollerinin yanı sıra **HTTP proxy**'leri aracılığıyla alımı destekler.
- `wget `etkileşimli değildir, yani kullanıcı oturum açmamışken arka planda çalışabilir. Bu, wget'in işlevini bitirmesine izin verir. Buna karşılık, Web tarayıcılarının çoğu, çok fazla veri aktarırken büyük bir engel olabilen sürekli bir kullanıcının varlığına ihtiyaç duyar.
- `wget`, **HTML** ve **XHTML** sayfalarındaki bağlantıları takip edebilir ve orijinal sitenin dizin yapısını tamamen yeniden oluşturarak uzak web sitelerinin yerel sürümlerini oluşturabilir. Bu bazen **özyinelemeli** indirme olarak adlandırılır. Bunu yaparken `wget`,  Robot Exclusion Standard *(Robot Hariç Tutma Standardına)* uyar. `wget`'e indirilen HTML dosyalarındaki bağlantıları çevrimdışı görüntüleme için yerel dosyalara dönüştürmesi talimatı verilebilir.
- wget, yavaş veya kararsız ağ bağlantılarında **sağlamlık** için tasarlanmıştır; bir ağ sorunu nedeniyle indirme başarısız olursa, *tüm dosya alınana kadar yeniden denemeye devam eder*. Sunucu devam etmeyi destekliyorsa, sunucuya indirmeye kaldığı yerden devam etmesi talimatını verecektir.
- En basit söz dizimi şu şekildedir : `wget [OPTIONS] [URL]`

## Gereksinimler
Yerel makinenizde `zenity` ve `wget` kurulmuş olmalıdır. Bu kurulumları aşağıda belirtilen komut satırlarını kullanarak yapabilirsiniz. Aşağıdaki komut satırlarını çalıştırmadan önce `sudo apt-get update` komutu ile apt-get paket listelerinizi güncellemeyi unutmayınız. Bunu yapmak  `wget`'in son sürümünü indirmenize imkan sunar.

- `sudo apt-get install zenity`
- `sudo apt-get install wget`

İndirme işlemlerinin başarılı olup olmadığına terminale şu komutları yazarak emin olabilirsiniz.

- `wget --version`
- `zenity --version`

## Kurulum & Kullanım

- Bir dizinde açtığınız terminalde aşağıdaki komut satırı ile repo'nun bir klonunu yerel makinenize indiriniz: 
-- `https://github.com/fatihes1/GUI-Bash-Script--wget.git`

- Repo yerel makinenize indikten sonra `cd GUI-Bash-Script--wget` komutu ile repo dizinine giriniz.
- `./script.sh` veya `bash script.sh` komutu ile program çalıştırılır.
- Bu işlemden sonra program kullanıcı arayüzünde istenilen işlemler gereken gereksinimler (Dosya URL bilgisi vb. ) programa girdi olarak verilir ve program gerekli işlevleri çalıştırır.

## Program Görüntüleri 
- Kullanıcıya sunulan seçenekler (opsiyonlar) aşağıdaki gibidir:
![01](https://user-images.githubusercontent.com/54971670/149222447-77844b5b-14b4-4580-aa13-de741ca3f0d0.PNG)
 
 - Kullanıcıdan dosya URL bilgisi gibi girdilerin alındığı pencere:
 ![02](https://user-images.githubusercontent.com/54971670/149222454-33a7a839-ce95-4f28-bc60-e4fd886967e8.PNG)

- İndirme işleminde bir sorun oluşması durumunda ekrana gelen pencere:
![03](https://user-images.githubusercontent.com/54971670/149222455-373778b5-664c-4278-97e2-dd1df306bef5.PNG)

- İndirme başarıyla tamamlandığında ekrana gelecek olan pencere:
![04](https://user-images.githubusercontent.com/54971670/149222456-e7b8c56b-7d37-4591-b359-a01c26bb3347.PNG)

- Boyutu yüksek olan dosyaların indirilmesi sırasında `progresbar` penceresi , indirme tamamlanana kadar görünmektedir:
![05](https://user-images.githubusercontent.com/54971670/149222458-4216c467-4eeb-4dbb-9867-1af4fca8952c.PNG)

- Kullanıcı `wget` sürümünü öğrenmek istediğinde ekrana gelen pencere:
![06](https://user-images.githubusercontent.com/54971670/149222459-e5f8c75c-464d-486d-9e36-137424a42c03.PNG)

- Kullanıcı programdan çıkış yapmak istediğinde ekrana gelen pencere : 
![07](https://user-images.githubusercontent.com/54971670/149222461-cce8df13-92ba-4d9c-806b-ba56ecb8a77e.PNG)
