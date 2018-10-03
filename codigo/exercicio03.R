dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/Exercicio3.csv", sep=";", dec=",",header=TRUE)

#as.numeric(as.character(dados))


#media
media <- mean(dados$ï..N.de.filhos)
media

#mediana do numero de filhos
mediana <- median(dados$ï..N.de.filhos)
mediana

#moda no numero de filhos
moda = subset(table(dados$ï..N.de.filhos),table(dados$ï..N.de.filhos)==max(table(dados$ï..N.de.filhos)))
moda

#gerando os gráficos
plot(mediana)
plot(moda)
