dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio4.csv", sep=";", dec=",",header=TRUE)

#frequencias sem intervalo de classe
#frequencia absoluta
freq <- table(dados$ï..SalÃ.rios);
freq
#frequencia relativa em percentual
p_freq_rel <- 100* prop.table(freq)
p_freq_rel

#adiciona linhas de total 
freq <- c(freq, sum(freq))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))
names(freq)[21] <- "Total"

#tabela final 
frequencia <- cbind(freq, p_freq_rel)
frequencia

#histograma
#gerando os gráficos
#frequencia absoluta
png(filename='./graficos/EX04/histograma.png', width = 800, height = 500, pointsize = 16)
hist(dados$ï..SalÃ.rios, xlab = "Salários", ylab = "Frequência")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

