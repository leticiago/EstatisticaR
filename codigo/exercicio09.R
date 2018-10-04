dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio9.csv", sep=";", dec=",",header=TRUE)

#distribuição de frequencia por intervalo de classe
summary(dados$ï..SalÃ.rios)

#3 pq mun = 4, 25 pq max = 25, 2 pq enunciado fala de amplitude = 2
brk<-seq(4,24,2)

classes<-c("4-6", "6-8", "8-10", "10-12", "12-14", "14-16", "16-18", "18-20","20-22", "22-24")
hist(dados$ï..SalÃ.rios,breaks=brk,right=F,labels=classes,main="")



#gerando os gráficos
png(filename='./graficos/EX09/histograma.png', width = 800, height = 500)
hist(dados$ï..SalÃ.rios,breaks=brk,right=F,labels=classes,main="")
dev.off()  

