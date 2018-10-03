dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio5.csv", sep=";", dec=",",header=TRUE)

#grafico de barras

barplot(dados$NÂº.pessoas, main="Distribuição de N° pessoas por marcas", 
        xlab= "Marcas", names = dados$ï..Marcas)

