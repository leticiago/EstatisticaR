library(qcc) # Carregar o pacote para uso das funções

dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio6.csv", sep=";", dec=",",header=TRUE)

defect <- dados$NÂº.pessoas
names(defect) <- dados$ï..Qualidade
pareto.chart(defect, ylab = "Error frequency")
pareto.chart(defect, ylab = "Error frequency", xlab = "Error causes", las=1)
pareto.chart(defect, ylab = "Error frequency", col=rainbow(length(defect)))


png(filename='./graficos/EX06/pareto.png', width = 800, height = 500, pointsize = 16)
pareto.chart(defect, cumperc = seq(0, 100, by = 5))
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

