dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio7.csv", sep=";", dec=",",header=TRUE)

#grafico de barras

barplot(dados$Atendimento, main="Distribuição de atendimento por área", 
        xlab= "Áreas", names = dados$ï..Ã.reas)
