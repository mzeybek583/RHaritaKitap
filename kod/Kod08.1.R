# Kod08.1.R
## Referans doğrulutusu
# dikayak dikboy
#birimler metredir.

x1 = 7.125
x2 = 6.267
x3 = 6.564
x4 = 4.881

h0 = 0.000
h1 = 7.384
h2 = 5.250
h3 = 8.621
h4 = 4.396

#Trapezoid
A = 1/2*(x1*(h0+h1) + x2*(h1+h2) + x3*(h2+h3) 
         + x4*(h3+h4))

cat("Alan:", A, "m^2")
