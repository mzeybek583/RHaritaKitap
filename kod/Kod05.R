#RHaritaKitap Kod05.R

set.seed(4208)

# 1'den 100'e kadar 1'er artışla veri oluşturma
def <- seq(1:100) 

n <- rnorm(100, mean = 0.5, sd = 1) # Gürültü oluşturma

def <- def + n # Gürültü ekleme

term <- rnorm(100, mean=25, sd= 5)

term <- sort(term)

df <- data.frame(def,term)

plot(df$def, df$term, xlab = "Deformasyon (mm)", ylab = "Sıcaklık (C)")
