#RHaritaKitap Kod01.R

getwd() # RStudio programı ve R çalışma klasörünü gösterir.

setwd("Desktop/") # Çalışma klasörünü masaüstü olarak 
#ayarlama

poligon <- read.csv(file="data/data01.csv", header=TRUE, 
                    sep="\t"); 
# read.csv fonksiyonu
# kullanarak masaüstünde yer alan data klasörü içinden 
#data01.csv isimli dosyanın başlığıyla 
# birlikte tab aralıklı olarak poligon nesnesine atanır. 
poligon
#poligon nesnesinin özelliği
class(poligon)
