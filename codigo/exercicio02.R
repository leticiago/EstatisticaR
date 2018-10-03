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
plot(freq)

#frequencia relativa
plot(p_freq_rel)


#//GERAR FRAFICO DE POSIÇÃO
grafico2 <- c(media,mediana,moda)
plot(grafico2, xlab = "N de Casas", ylab="Media, Mediana, Moda")

#// GERAR GRAFICO DE DISPERSÃO
grafico3 <- c(amplitude_total,variancia,desvio_padrão,coeficiente_de_variação)
plot(grafico3,xlab = "N de Casas", ylab="AT, VAR, SD, CV.")
