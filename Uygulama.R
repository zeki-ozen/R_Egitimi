
# iris veri setini yukleyelim
data(iris)
head(iris)

# veya
library(datasets)
head(iris)


# iris veri setindeki ilk ornegin Sepal.Length degeri 5ten buyuk mu kontrol edelim.
if (iris$Sepal.Length[1] > 5) {
  print("Ilk ornegin Sepal.Length degeri 5'ten buyuk.")
}



# Ilk ornegin Petal.Width degeri 1'den buyukse "Genis", degilse "Dar" yazdiralim.
if (iris$Petal.Width[1] > 1) {
  print("Genis")
} else {
  print("Dar")
}






# iris veri setindeki her bir ornegin Sepal.Length degeri 5ten buyuk mu kontrol edelim.
for (i in 1:nrow(iris)){
  if (iris$Sepal.Length[i] > 5) {
    cat(i, ". ornegin Sepal.Length degeri 5'ten buyuk.\n")
  }
}




# Orneklerin ortalama Petal.Width degerini bulalim


ortalama <- 0
for (i in 1:nrow(iris)){
  ortalama <- mean(iris$Petal.Width[i])
}
cat("Orneklerin ortalama Petal.Width degeri:", ortalama)


