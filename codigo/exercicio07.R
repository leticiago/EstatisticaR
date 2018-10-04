dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio7.csv", sep=";", dec=",",header=TRUE)

#grafico de barras



png(filename='./graficos/EX07/barras.png', width = 800, height = 500, pointsize = 16)
barplot(dados$Atendimento, main="Distribuição de atendimento por área", 
        xlab= "Áreas", names = dados$ï..Ã.reas)
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)



