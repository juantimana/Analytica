

set.seed(123)
data = rnorm(n=100000, mean=65, sd= 3 )

# Histograma de la Población

hist(data, prob= TRUE, nclass=50, main = "Poblacion", ylab = "Densidad",ylim=c(0,1))
abline(v=mean(data),  col="red", lwd=3, lty=2)
mtext("MEDIA  ", side = 3)

jmv::descriptives(as.data.frame(data))

# Haremos simulaciones de 1000 muestras
n_muestras = 100000





# Comenzamos con muestras de tamaño n = 10

medias10 = c() # Primero es un vector vacío
n = 10
for (i in 1:n_muestras){
    medias10[i] = mean(sample(data, n, replace=TRUE))
}


# Estadisticas descriptivas de las medias10
jmv::descriptives(as.data.frame(medias10))

# Histograma de las medias (n=1)
hist(medias10, prob= TRUE, nclass=50, col='red',  main='Histograma de las medias n=10', xlab='Valor de la medias',
     ylab = "Densidad",ylim=c(0,1))
abline(v=mean(data),  col="black", lwd=3, lty=2)
mtext("MEDIA  ", side = 3)

# Comparando la poblacion con la distribucion de muestreo de n = 10

hist(data, prob= TRUE, nclass=50, main = "Poblacion y Distribucion de Muestreo", ylab = "Densidad",ylim=c(0,1))
hist(medias10, prob= TRUE, nclass=50, add = TRUE, col= rgb(1, 0, 0, alpha = 0.5) , ylim=c(0,1))
abline(v=mean(data),  col="red", lwd=3, lty=2)
mtext("MEDIA  ", side = 3)

# Tamaño de muestra n = 40

medias40 = c() # Primero es un vector vacío

n = 40
for (i in 1:n_muestras){
    medias40[i] = mean(sample(data, n, replace=TRUE))
}

# Estadisticas descriptivas de las medias10
jmv::descriptives(as.data.frame(medias40))

# Histograma de las medias (n=1)
hist(medias40, col='red', main='Histograma de las medias n=40', xlab='Valor de la medias')

# Comparando la poblacion con la distribucion de muestreo

hist(data, prob= TRUE,  nclass=50, main = "Poblacion y Distribucion de Muestreo", ylab = "Densidad",ylim=c(0,1))
hist(medias10, prob= TRUE, nclass=50, add = TRUE, col= rgb(1, 0, 0, alpha = 0.5) , ylim=c(0,1))
hist(medias40, prob= TRUE,  nclass=50, add = TRUE, col= rgb(1, 0, 0, alpha = 0.2), ylim=c(0,1))
abline(v=mean(data),  col="red", lwd=3, lty=2)
mtext("MEDIA  ", side = 3)

