dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio9.csv", sep=";", dec=",",header=TRUE)

#distribuição de frequencia por intervalo de classe
summary(dados$ï..SalÃ.rios)

#3 pq mun = 4, 25 pq max = 25, 2 pq enunciado fala de amplitude = 2
brk<-seq(3,25,2);brk
classes<-c("3-5", "5-7", "7-9", "9-11", "11-13", "13-15", "15-17", "17-19", "19-21", "21-23", "23-25")
table(cut(dados$ï..SalÃ.rios,breaks=brk,right=FALSE,labels=classes))
plot(table(cut(dados$ï..SalÃ.rios,breaks=brk,right=FALSE,labels=classes)),ylab="Freq.")


