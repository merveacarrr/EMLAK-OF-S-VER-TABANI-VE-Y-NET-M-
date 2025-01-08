
# 🏡 Zümrüt Emlak Veritabanı Projesi

**Bir ev al, hayatını kolaylaştır!**  
Zümrüt Emlak Veritabanı, emlak ofislerinin ev alım-satım işlemlerini düzenlemek ve verimliliği artırmak için tasarlanmış bir projedir.  
💡 **Hedefimiz:** Ev sahipleri, müşteriler ve çalışanlar arasındaki iletişimi kolaylaştırmak!

---

## 📋 Proje Konsepti

Bir emlak ofisi düşünün:  
- Ev sahipleri evlerini satmak/kiraya vermek istiyor.  
- Müşteriler hayallerindeki evi bulmak için ofise geliyor.  
- Çalışanlar ise bu süreci yönetiyor.  

Bu proje, tüm bu işlemleri düzenleyen **bir veritabanı** sunuyor. Tablolar ve ilişkilerle, her şey artık daha sistematik!

---

## 🛠️ Veritabanı Mimarı: "Tabloların Efendisi"

### Veritabanındaki Tablolar:
1. **TblEv**: Evlerin tüm özelliklerini saklar (metrekare, oda sayısı...).
2. **TblEvSahibiBilgi**: Ev sahiplerinin bilgilerini içerir (isim, telefon...).
3. **TblCalisanBilgi**: Ofisteki çalışanların bilgilerini tutar (isim, maaş...).
4. **TblMusteriBilgi**: Evlerle ilgilenen müşterilerin bilgilerini barındırır.
5. **TblilanBilgi**: Evlerin kiralık mı yoksa satılık mı olduğunu belirtir.
6. **TblilBilgi**: Evlerin bulunduğu şehirleri listeler.

![data_normalizasyon](https://github.com/user-attachments/assets/798cc79f-a379-4bbd-85b4-05aac68e5fe1)

---

### 🌐 Tablolar Arası "Aşk ve Mantık" (İlişkiler):
- **Primary Key (PK)**: Her tabloda benzersiz bir kimlik numarası.
- **Foreign Key (FK)**: Tablolar arası bağlantıları kurar.  
🎯 **Hedef:** Doğru veri, doğru yerde!

---

## 📐 Veritabanı Diyagramı

Projemizin görsel tasarımını burada hayal edin: 🖼️  

![dıyagram](https://github.com/user-attachments/assets/0ac5f6b9-683f-47a0-90f7-69afe38e6dc3)

---

## 🚀 Bu Projeyi Nasıl Kullanırım?

**Adım 1:** SQL Server'ı açın.  
**Adım 2:** Bu projeye ait `zumrut-emlak.sql` dosyasını yükleyin.  
**Adım 3:** Tablolar oluşturulsun, veriler yüklensin! 🎉  
**Adım 4:** Artık kendi veritabanınızı test edebilir ve sorgular yazabilirsiniz.

---

## 🛠️ Kullanılan Teknolojiler ve Komutlar

### **Sihirli SQL Komutları:**
- 🛠️ `CREATE TABLE`: Yepyeni tablolar oluştur.
- ✏️ `INSERT INTO`: Verileri doldur.
- 🔍 `SELECT`: Veri ara, bul ve listele.
- 🔄 `UPDATE`: Hataları düzelt, bilgileri güncelle.
- ❌ `DELETE`: İşine yaramayan veriyi sil.
- 🎨 `ORDER BY`: Her şeyi alfabetik sıraya sok!

### **Kullanılan Veri Tipleri:**
- **`INT`**: Sayılar için.
- **`VARCHAR`**: Yazılar için.
- **`TINYINT`**: Küçük sayılar için.
- **`MONEY`**: Parasal değerler için.

---

## 🌟 Neden Bu Proje?

- Emlak ofislerinin iş yükünü hafifletir.  
- Verilerin organize ve kolay erişilebilir olmasını sağlar.  
- İş akışını hızlandırır ve hataları en aza indirir.  

💡 **Eğer ev almayı düşünüyorsanız, Zümrüt Emlak her zaman yanınızda!**
