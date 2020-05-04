#RHaritaKitap Kod04.R

set.seed(4208)

data <- rnorm(100, mean = 0, sd=10)

#Histogram
hist(data)

# BoxPlot
data_2 <- rnorm(100, mean = 10, sd=5)

df <- data.frame(data, data_2)

boxplot(df)
