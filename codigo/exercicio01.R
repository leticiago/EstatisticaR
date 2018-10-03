dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio1.csv", sep=";", dec=",",header=TRUE);

summary(dados$ï..Taxas.de.juros);
#media
media = mean(dados$ï..Taxas.de.juros)
boxplot(media)
#mediana
plot(median(dados$ï..Taxas.de.juros));
#desvio-padrão
plot(sd(dados$ï..Taxas.de.juros));
#variância
plot(var(dados$ï..Taxas.de.juros));
#mínimo
plot(min(dados$ï..Taxas.de.juros));
#máximo
plot(max(dados$ï..Taxas.de.juros));
#Quantis
plot(quantile(dados$ï..Taxas.de.juros))

