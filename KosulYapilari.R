# Egitmen: Dr. Zeki Ozen
# Tarih: 07.02.2025
# mail: zekiozen@istanbul.edu.tr
# Konu: R Dilinde Kosul Yapilari



# Mantiksal Deger (Boolean)

# Bir ifadenin dogru veya yanlis olma durumudur.
# Ornegin "10 sayisi 5ten buyuktur" ifadesi dogru bir ifadedir, TRUE durumudur.
# "3 sayisi 1den kucuktur" ifadesi ise yanlis yani FALSE degerindedir.


# Temel Karsilastirma Operatorleri
# Buyuktur, Kucuktur, Buyuk veya esittir, Kucuk veya esittir
5 > 3
6 < 4

-3 <= -8
5 >= 12

# == ESIT MI. Esitlik kontrolu yapar. Esitse TRUE, esit degilse FALSE doner
# ! DEGIL (NOT) operatoru. TRUE degeri FALSE yapar; FALSE degeri TRUE yapar.
# != ESIT DEGIL MI. Esit degilse TRUE, esitse FALSE doner.

10 == 10
25 == 46

25 != 46
10 != 10


x <- 3
y <- 9

# Soru ?
x != y



"KALEM" == "kalem"
# R dilinde string degerle buyuk-kucuk harfe duyarlidir.
# R dili buyuk-kucuk harfe duyarli bir dildir.


# Mantiksal Operatorler

# VE Operatoru (VE Kapisi) Sembolu: &
# Sagina ve soluna iki ifade alir. 
# Her iki ifade dogruysa (TRUE ise) TRUE doner. Aksi halde FALSE doner.

T & T
T & F
F & T
F & F


# Ornek
12 > 6 & 8 < 17 # 

12 < 6 & 8 < 17 # 


# VEYA Operatoru (VEYA Kapisi) Sembolu: |
# Sagina ve soluna iki ifade alir. 
# Iki ifadeden herhangi biri dogruysa (TRUE ise) TRUE doner. 
# Her iki ifade de yanlissa FALSE doner.

T | T
T | F
F | T
F | F


# Ornek
12 > 6 | 8 < 17 # 

12 < 6 | 8 < 17 # 
F | T

12 < 6 | 8 > 17 # 

12 >= 36 | 8 < 13 #


# Soru:

a <- 5
b <- 3
c <- -2
d <- 0

(b-c >= d) | (3*c > -a & b+c < d)




# Kosul Yapilari

# Kaynak kod dosyasinda satirlar yukaridan asagiya dogru calistirilir.
# Her bir satir siryla calistirilir.
# Kimi zaman her satirin calismasini istemeyiz. 
# Ornegin bir durum meydana gelmise belirli kod satirlarinin clismasini,
# eger o durum meydana gelmemisse o kod satirlarinin calismamasini isteriz.
# Programlama dillerinde bunu saglayan yapilara Kosul Yapilari denir.


# Boylece Kosul yapilari, bir ifadenin dogru veya yanlis olmasina gore kod akisini yonlendirir.


# if kosul Yapisi
# en temel kosul yapisidir. 
# Bir kosulun saglanmasi durumunda kendisine bagli kod blogundaki kodlari calistirir
# Kosul saglanmamisya (FALSE donmusse) kendisine bagli kodlar calistirilmaz.

if (kosul == TRUE){
  komut1
  komut2
  ...
  komutN
} 





# sayi degiskeninin 0dan buyuk olma durumuna gore 
# konsola "sayi pozitiftir" yazdiralim.

sayi <- 100
if (sayi > 0) {
  print ("Sayi pozitiftir.")
}

# Ayni ornegi -7 degerindeki sayi degiskeni icin de yapalim.

sayi <- -7
if (sayi > 0) {
  print ("Sayi pozitiftir.")
}


# string ifade icin de bir ornek yapalim.

bolum = "Fizik"
if (bolum == "Siyaset Bilimi"){
  print ("Siyaset Bilimini kazandiniz.")
}



# if-else Kosul Yapisi
# iki durum soz konusudur.

# Ilk durumda if kosulu kontrol edilir. 
# Eger if kosulu saglaniyorsa else blogu calistirilmaz.
# if kosulu saglanmiyorsa else blogundaki kodlar calistirilir.


if (kosul == TRUE){
  komut1
  komut2
} else {
  komut3
}

komut4


# x degiskeninin pozitif veya negatif olma durumunu isleyen kosul yapisi


x <- 125

if (x > 0) {
  print ("Pozitif sayi")
} else {
  print ("Negatif sayi")
}



x <- 45

if (x > 0){
  print ("Pozitif sayi")
} else {
  print ("Negatif sayi")
}


# else if Kosul Yapisi
# iki veya daha fazla duruma ait calistirilacak kodlar icin else if kosul yapisi kullanilir.


x <- 0

if (x > 0){
  print ("Pozitif sayi")
} else if (x < 0) {
  print ("Negatif sayi")
} else if (x == 0) {
  print ("Sifir")
}



# ust taraftaki ornegin bir baska yazim sekli
x <- 0

if (x > 0){
  print ("Pozitif sayi")
} else if (x < 0) {
  print ("Negatif sayi")
} else {
  print ("Sifir")
}


# Asagida verilen x ve y degiskenlerinin degerlerine gore 
# kosul yapisinin ciktisi ne olacaktir?


y = 5
x <- 0

if (x < 0) {
  print("a")
} else if (x > 0) {
  print("b")
} else if (x != 0 | y > 10) {
  print("c")
} else {
  print("d")
}






isim <- "Zeynep"

if (isim == "Zeki"){
  print ("Hoca")
} else {
  print ("Ogrenci")
}




# Soru: Asagidaki x ve ye degerlerine gore:
# * y + 3 degeri x degerinden kusukse ekrana * yazsin
# * y + 4 degeri x degerinden buyuk veya esitse ekrana & yazsin
# * x degeri y + 4 degerinden buyukse ekrana # yazsin
# bu kosullarin hicbiri dogru degilse ekrana ? yazsin.

x <- 9
y <- 5











# Kullanicidan bir deger almak icin readline() komutu kullanilir.

bisey <- readline()
print(bisey)



# Soru: Asagidaki notlara gore ogrencinin Harf notunu ekrana yazdirin.
# Kullanicidan deger girmesini isteyin ve bu degeri not degiskeninde saklayin.


# 0 -  45 F
# 46 - 65 D
# 66 - 75 C
# 76 - 85 B
# 86 - 100 A
# Sayi girilmemise Lutfen sayi giriniz.


# if-else yapisinin daha kisa yazimi (Ternary)
# Sozdizimi: 

ifelse(kosul, "Dogruysa", "Yanlissa")


sayi <- 6
sonuc <- ifelse(sayi > 3, "Buyuk", "Kucuk veya Esit")
sonuc


# Odev: Kullanicinin girdigi bir sayinin pozitif veya negatif olma durumunu 
# ifelse (Ternary) yapisiyla kodlayin.




# switch yapisi

option <- readline()
switch(option,
        "1" = "1 tusuna bastiniz",
        "2" = "2 tusuna bastiniz",
        "3" = "3 tusuna bastiniz",
        "4" = "4 tusuna bastiniz",
        "5" = "5 tusuna bastiniz",
       "Gecersiz bir tusa basildi")



