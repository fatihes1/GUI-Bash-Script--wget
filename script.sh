#!/bin/sh
Status () {
    if [ $1 == 0 ]
    then
        zenity --info --width 500 --height 100 --title="Wget İndirme Aracı - Bilgilendirme" --text="İndirme işlemi başarıyla tamamlandı."
    else
        zenity --error --width 500 --height 100 --title="Wget İndirme Aracı - Hata" --text="İndirme işlemi sırasında bir sorun oluştu. Dosya URL bilgisinin doğru olduğundan emin olun."   
    fi
}
while [ 1 ]
do
chosen="$(zenity --list --title="Wget Indirme Aracı" --text="Yapmak İstediğiniz İşlemi Belirtiniz"  --width 1200 --height 500 --column="Eylem" --column="Açıklama" --column="Gereksinimler" \
"Normal_İndirme" "Metin olarak gireceğiniz URL üzerindeki dosyanın indirilmesini sağlar." "Dosya Linki" \
"Dosya_İsmiyle_İndirme" "Metin olarak gireceğiniz URL üzerindeki dosyayı, belirteceğiniz spesifik dosya ismi olarak indirir." "Dosya Linki, Dosya İsmi" \
"Özel_Dizine_İndirme" "Metin olarak gireceğiniz URL üzerindeki dosyayı, belirteceğiniz spesifik dizine indirme işlemi yapar." "Dosya Linki, Dizin Yolu" \
"Dosyadan_Çoklu_İndirme" "İçerisinde URL bilgilerini tutan dosya (txt) içerisinden çoklu indirme işlemi yapar." "Dosya Linklerini İçeren text Dosyası" \
"Web_Sayfası_İndirme" "Metin olarak gireceğiniz web sayfasını indirir." "Web Sayfası Linki" \
"FTP_İndirme" "Parola korumalı bir FTP sunucusundan dosya indirir." "FTP Server Kullanıcı Adı, Şifresi, Dosya Linki" \
"Versiyon_Öğren" "Wget versiyonunu öğrenmek için kullanılır." "Gereksinim içermez" \
"Wget_Yardım" "Wget komutu hakkında yardım içeriğini gösterir." "Gereksinim içermez" \
"Çıkış_Yap" "Programı sonlandırmak için kullanılır." "Gereksinim içermez")"

if [ $? != 0 ]
then
	exit 1
fi

if [ $chosen == "Normal_İndirme" ]
then
    input="$(zenity --entry --title="Normal İndirme" --width 800 --text="İndirmek istediğiniz dosyanın URL bilgisini giriniz.")"
    wget $input | zenity --progress --title="Wget Inderme Aracı - İndiriliyor" --text="Dosya(lar) İndiriliyor" --width 600  --auto-close --pulsate --no-cancel
    Status ${PIPESTATUS[0]}
elif [ $chosen == "Dosya_İsmiyle_İndirme" ]
then
    input="$(zenity --entry --title="Dosya İsmiyle İndirme" --width 800 --text="İndirmek istediğiniz dosyanın URL bilgisini giriniz.")"
    file="$(zenity --entry --title="Dosya İsmiyle İndirme" --width 800 --text="İndirilecek dosyaya vermek istediğiniz ismi giriniz.")"
    wget -O $file $input | zenity --progress --title="Wget Inderme Aracı - İndiriliyor" --text="Dosya(lar) İndiriliyor" --width 600  --auto-close --pulsate --no-cancel
    Status ${PIPESTATUS[0]}
elif [ $chosen == "Özel_Dizine_İndirme" ]
then
    input="$(zenity --entry --title="Özel Dizine İndirme" --width 800 --text="İndirmek istediğiniz dosyanın URL bilgisini giriniz.")"
    directory="$(zenity --file-selection --title="İndirilecek Dizini Seçiniz" --directory)"
    wget -P $directory $input | zenity --progress --title="Wget Inderme Aracı - İndiriliyor" --text="Dosya(lar) İndiriliyor" --width 600  --auto-close --pulsate --no-cancel
    Status ${PIPESTATUS[0]}
elif [ $chosen == "Dosyadan_Çoklu_İndirme" ]
then
    input=`zenity --file-selection --title="Linkleri İçeren Dosyayı Seçiniz"`
    echo $input
    wget -i "$input" | zenity --progress --title="Wget Inderme Aracı - İndiriliyor" --text="Dosya(lar) İndiriliyor" --width 600  --auto-close --pulsate --no-cancel
    Status ${PIPESTATUS[0]}
elif [ $chosen == "Web_Sayfası_İndirme" ]
then
    input="$(zenity --entry --title="Web Sayfası İndirme" --width 800 --text="İndirmek istediğiniz web sayfasının URL bilgisini giriniz.")"
    zenity --info --width 500 --height 100 --title="Wget İndirme Aracı - Bilgilendirme" --text="Bu işlem web sayfasının büyüklüğüne göre değişkenlik sağlayabilir. Lütfen bekleyiniz. İndirme işlemi bittiğinde bildirileceksiniz."
    wget -m $input | zenity --progress --title="Wget Inderme Aracı - İndiriliyor" --text="Dosya(lar) İndiriliyor" --width 600  --auto-close --pulsate --no-cancel
    Status ${PIPESTATUS[0]}
elif [ $chosen == "FTP_İndirme" ]
then
    username="$(zenity --entry --title="Web Sayfası İndirme" --width 800 --text="FTP Server Kullanıcı Adınızı Giriniz")"
    password="$(zenity --entry --title="Web Sayfası İndirme" --width 800 --text="FTP Server Kullanıcı Parolanızı Giriniz")"
    input="$(zenity --entry --title="Web Sayfası İndirme" --width 800 --text="İndirmek istediğiniz dosyanın URL bilgisini giriniz.")"
    wget --ftp-user=$username --ftp-password=$password $input | zenity --progress --title="Wget Inderme Aracı - İndiriliyor" --text="Dosya(lar) İndiriliyor" --width 600  --auto-close --pulsate --no-cancel
    Status ${PIPESTATUS[0]}
elif [ $chosen == "Versiyon_Öğren" ]
then
    version=$(wget --version | head -1)
    zenity --info --width 500 --height 100 --title="Wget İndirme Aracı - Bilgilendirme" --text="Kullandığınız wget versiyonu  :  ${version}" 
elif [ $chosen == "Wget_Yardım" ]
then
    version=$(wget --help)
    echo $version > help.txt
    FILE=help.txt
    zenity --text-info --width 800 --height 600 --title="Wget İndirme Aracı - Yardım" --filename=$FILE
elif [ $chosen == "Çıkış_Yap" ]
then
    zenity --question --text "Çıkış yapmak istediğinize emin misiniz?" --width 500 --height 80 --ok-label "Evet" --cancel-label="Hayır"
    if [ $? == 0 ]
    then
        break
    fi
fi
done
