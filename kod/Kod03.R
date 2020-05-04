#RHaritaKitap Kod03.R

# install.packages("tidyverse", "ggpubr") # ek paketlerin kurulumu

library(tidyverse)
library(ggpubr)

set.seed(4208)

theme_set(theme_pubr())

# 1'den 100'e kadar 1'er artışla veri oluşturma
def <- seq(1:100) 

n <- rnorm(100, mean = 0.5, sd = 1) # Gürültü oluşturma

def <- def + n # Gürültü ekleme

term <- rnorm(100, mean=25, sd= 5)

term <- sort(term)

df <- data.frame(def,term)

# Veri kontrol
head(df)

#Çizdirme
ggplot(df, aes(x = def, y = term)) +
  geom_point() +
  stat_smooth() + xlab("Deformasyon [mm]") +
  ylab("Sıcaklık [°C]")
  
# Korelasyon katsayısı
cor(df$def,df$term)

# Basit regresyon modeli
model <- lm(def ~ term, data = df)
model
summary(model)
