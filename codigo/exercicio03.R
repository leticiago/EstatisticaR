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
#mediana
png(filename='./graficos/EX03/mediana.png', width = 800, height = 500, pointsize = 16)
plot(mediana, main="Mediana nº de filhos", ylab="Nº de filhos")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)


#gerando os gráficos
#moda
png(filename='./graficos/EX03/moda.png', width = 800, height = 500, pointsize = 16)
plot(moda, main="Moda nº de filhos", ylab="Nº de filhos")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

