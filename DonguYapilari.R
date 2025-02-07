# Egitmen: Dr. Zeki Ozen
# Tarih: 07.02.2025
# mail: zekiozen@istanbul.edu.tr
# Konu: R Dilinde Dongu Yapilari ve Dongu Kontrol Yapilari


# Tekrarlayan is ve sureclerde Donguler kullanilir.
# Dongunun her tekrarina iterasyon denir.
# Dongunun her bir iterasyonu tutan degiskene sayac denir.


# for Dongusu
# En temel dongu for dongusudur.
# for dongusu baslangic ve bitis degerlerinin bilindigi durumlarda kullanilir.
# Bir vektor, dizi veya liste uzerindeki elemanlarin her biriyle islem yapmak icin kullanilir.

# for dongusunun sozdizimi
for (sayac in dizi){
  dongu govdesi
  komut1
  konut2
  komutN
}


# Soru: 1den 10a kadar olan sayilari yazdiralim
print(1)
print(2)
print(3)
print(4)
...
print(9)
print(10)




# Bu isi for dongusuyle yapalim.

for (i in 1:10) {
  print(i)
}


# Basi ve sonu belli sayilari saklamak icin seq veri yapisi kullanilabilir.

seq <- 1:10

for (i in seq) {
  print(i)
}






# 1-100 arasi sayilarin kupunu ekrana ciktilayalim
for (indis in 1:100){
  cat(indis , ":" ,  indis ^ 3 , "\n")
}


# for dongusu artarak veya azalarak calisir.

# 100den 75e kadar olan sayilari ekrana ciktilayalim.
for (i in 100:75)
  print (i) 


# Dongu sayacinin birer birer artmasi veya azalmasi zorunlu degilir.
# ikiser, ucer, beser vb. artabilir veya azalabilir.
# bunun icin yine seq veri yapisi kullanilabilir.
seq(from = 1, to= 100, by = 1)

# 1-100 arasi ucer artan sayilar
seq(1,  100, 3)

# 250 ile 100 arasi yediser azalan sayilar
seq(250,  100, -7)


# 25 ile 12 arasinda ucer azalan sayilari for ile ekrana ciktilayalim

for (i in seq(25,  12, -3))
  print (i) 


# 1 ile 10 arasindaki sayilarin toplamini bulalim

toplam <- 0

for (i in 1:10){
  toplam <- toplam + i
}
print (toplam)


# Soru: -50 ile 0 arasinda sekizer artan sayilarin toplamini for dongusuyle bulun.
for (j in seq(-50, 0, 8)){
  toplam <- toplam + j
}
print (toplam)


# 50-250 arasi 7ye tam bolunen sayilari ekrana ciktilayalim

for (sayi in 50:250){
  if (sayi %% 7 == 0){
    print (sayi)
  }
}



# -20 ile -80 arasinda beser azalan sayilari ekrana ciktilayin
# toplamlarini bulun
# kac sayi oldugunu bulun
for (i in seq(from = -20, to= -80, by = -5))
  print (i)



# for dongusu vektorler ile de kullanilabilir

sayilar <- c(2, 5, 3, 9, 8, 11, 6)
# problem: yukaridaki sayi dizisinde tek sayilarin toplamini 
# ekrana ciktilayan R programini yazin
toplam <- 0
for (i in sayilar) {
  if (i %% 2 == 1)  
    toplam <- toplam + i
}
print(toplam)





# Problem: yukaridaki sayi dizisinde tek sayilarin adedini 
# ekrana ciktilayan R programini yazin
tekSayiAdedi <- 0
for (i in sayilar) {
  if (i %% 2 == 1)  
    tekSayiAdedi <- tekSayiAdedi + 1
}
print(tekSayiAdedi)





# Haftanin gunlerini for dongusuyle ekrana ciktilayalim
hafta <- c('Pazartesi',
           'Sali',
           'Carsamba',
           'Persembe',
           'Cuma',
           'Cumartesi',
           'Pazar')

for (gun in hafta)
{
  print(gun)
}




# while dongusu
# while dongusu, dongunun kac kere calisacaginin bilinmedigi durumlarda kullanilir
# while dongusu kosul alir ve kosul dogru ise calisir
# dongunun her tekrarinda kosulun dogrulugu kontrol edilir
# while dongusunun sozdizimi

while (kosul == TRUE){
  kod1
  kod2
}



# 25 ile 150 arasi sayilarin toplamini bulalim. 
# Toplam deger 200u gecene kadar dongu calissin.
# Toplam deger 200u gectiginde dongu sonlansin.
# Dongunun kac kere calisagini bilemiyoruz.
# Bu durumda while dongusu kullanilir.



toplam <- 0

i <- 25
while (toplam <= 200){
  toplam <- toplam + i
  cat(i, ":", toplam, "\n")
  i <- i + 1
}


# while dongusu, basit for dongusu gibi baslangic ve bitis degerlerinin bilindigi durumlarda da kullanilabilir
# 1-10 arasi sayilari while dongusu ile ekrana ciktilayalim

i <- 1
while (i <= 10) {
  print(i)
  i = i + 1
}



# -20 ile -80 arasi beser azalan sayilari ekrana while dongusu ile ciktilayalim




# 50 ile 20 arasi tek sayilarin adedini bulan program
i <- 50
tekSayiAdedi <- 0
while (i >= 20) {
  if (i %% 2 == 1){
    tekSayiAdedi <- tekSayiAdedi + 1
    print (i)
  }
  i = i - 1
}
print("50 ile 20 arasi Tek sayi adedi: ")
print(tekSayiAdedi)









# while dongusunde kosul basta kontrol edilir.
# Dongunun her iterasyonunda kosul kontrol edilir.
# Kosul dogru degilse dongu hic calismaz.

i <- 90
while (i <= 10) {
  print(i)
  i = i + 1
}







# Dongu Kontrol Deyimleri

# break
# Donguyu sonlandirmak icin break anahtar kelimesi kullanilir.
# break komutu dongunun bitmesini beklemeden donguyu sonlandirir.
# tum dongulerle kullanilabilir.


# 50-100 arasi sayilarin toplamini bulalim. 
# toplam degeri 2500 veya uzeri oldugunda donguden cikilsin

toplam <- 0
for (sayi in 50:100){
  toplam <- toplam + sayi
  cat(sayi, ":", toplam, "\n")
  if (toplam >= 2500)
    break
}

# 50-250 arasi 7ye tam bolunen sayilari ekrana ciktilayalim. 
# fakat 7ye tam bolunenlerin toplamlari 1000i gecmisse donguden cikalim

toplam <- 0
for (sayi in 50:250){
  if (sayi %% 7 == 0){
    toplam <- toplam + sayi
    cat(sayi , ":", toplam, "\n")
    if (toplam >=1000){
      break
    }
  }
}

# Soru: bu problemi while dongusu ile cozun.









# next anahtar kelimesi
# Bir dongunun o anki iterasyonu es gecip sonraki iterasyondan devam etmesini saglar



# 1-100 arasi 7ye bolunmeyen sayilari ekrana ciktilayalim

x <- 1:100
for (val in x) {
  
  if (val %% 7 == 0){
    next
  } else {
    print(val)
  }
  
}





# 1-10 arasi sayilardan 4e tam bolunenleri yazdirmasin, es gecsin, pas gecsin
# 1 2 3 5 6 7 9 10

aralik <- 1:10

for (i in aralik){
  if (i %% 4 == 0)
    next
  print(i)
}



hafta <- c('Pazartesi',
          'Sali',
          'Carsamba',
          'Persembe',
          'Cuma',
          'Cumartesi',
          'Pazar')

# Vektorun elemanlarina koseli parantez notasyonuyla erilsilir.
# Haftanin ikinci gununu ogrenmek icin
hafta[2]

# hafta dizisinin eleman sayisi length ile elde edilir
length(hafta)


# Haftanin tek gunlerini ekrana yazdir, cift gunleri yazdirma
for (gun in 1:length(hafta)){
  
  if (gun %% 2 == 0)
    next
  print(hafta[gun])
}







# repeat dongusu
# Kimi zaman dongu kosulunun dongunun basinda degil dongunun sonunda kontrol edilmesi gereken durumlar olabilir. 
# Dongunun en az 1 kere calismasi istenen durumlarda repat yapisi kullanilir.


# Sayi tahmin oyunu
# Sistem 1-5 arasi bir sayi uretsin.
# Kullanicidan 1-5 arasi bir sayi isteyelim.
# Kullanici dogru sayiyi tahmin edene kadar sayi istensin.
# Yani bu dongunun en az bir kere calismasi gerekir


# 1-5 arasi rasgele bir sayi uretiliyor
rasgele_sayi <- sample(1:5, 1)

# sayi istenmesi icin dongu baslatiliyor
sayi_istensin <- TRUE

repeat {
  # kullanicidan bir sayi girmesi isteniyor
  tahmin <- as.integer(readline(prompt = "Bir sayi yazin (1-5 arasi): "))
  
  if(rasgele_sayi != tahmin) {
    cat("Yanlis tahmin! Tekrar deneyin.\n")
  } else {
    cat("Dogru tahmin ettiniz. Bravo.\n")
    break
  }
}


