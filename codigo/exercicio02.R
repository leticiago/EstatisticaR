dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio2.csv", sep=";", dec=",",header=TRUE);

#A) 
#//sem intervalo de classe
#frequencia absoluta
freq <- table(dados$ï..Casas);
freq
#frequencia relativa em percentual
p_freq_rel <- 100* prop.table(freq)
p_freq_rel

#adiciona linhas de total 
freq <- c(freq, sum(freq))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))
names(freq)[40] <- "Total"

#tabela final 
 frequencia <- cbind(freq, p_freq_rel)
 frequencia



#B) //medidas de posição = media, mediana e moda 
media = mean(dados$ï..Casas)
mediana = median(dados$ï..Casas)
moda = subset(table(dados$ï..Casas) ,table(dados$ï..Casas)==max(table(dados$ï..Casas)))


#//medidas de dispersão 
#//diferença entre o maior e menor valor dos dados
amplitude_total = amplitude <- max(dados$ï..Casas) - min(dados$ï..Casas) 

variancia = var(dados$ï..Casas)
desvio_padrão = sd(dados$ï..Casas)
coeficiente_de_variação = 100*sd(dados$ï..Casas)/mean(dados$ï..Casas)


#C) //GERAR GRAFICO DE FREQUENCIA 

#frequencia absoluta
png(filename='./graficos/EX02/frequencia_absoluta.png', width = 800, height = 500, pointsize = 16)
boxplot(freq, main="Frequência absoluta de casas", ylab="Nº de casas")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)


#frequencia relativa
#frequencia absoluta
png(filename='./graficos/EX02/frequencia_relativa.png', width = 800, height = 500, pointsize = 16)
boxplot(p_freq_rel, main="Frequência relativa de casas (%)", ylab="Nº de casas")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)


#//GERAR FRAFICO DE POSIÇÃO
grafico2 <- c(media,mediana,moda)
#frequencia absoluta
png(filename='./graficos/EX02/posicao.png', width = 800, height = 500, pointsize = 16)
plot(grafico2, xlab = "N de Casas", ylab="Media, Mediana, Moda")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)


#// GERAR GRAFICO DE DISPERSÃO
grafico3 <- c(amplitude_total,variancia,desvio_padrão,coeficiente_de_variação)
png(filename='./graficos/EX02/dispersao.png', width = 800, height = 500, pointsize = 16)
plot(grafico3,xlab = "N de Casas", ylab="AT, VAR, SD, CV.")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

