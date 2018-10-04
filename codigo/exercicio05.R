dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio5.csv", sep=";", dec=",",header=TRUE)

#grafico de barras


png(filename='./graficos/EX05/barras.png', width = 800, height = 500, pointsize = 16)
barplot(dados$NÂº.pessoas, main="Distribuição de N° pessoas por marcas", 
        xlab= "Marcas", names = dados$ï..Marcas)
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

