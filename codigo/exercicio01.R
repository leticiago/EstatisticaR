dados <- read.csv("C:/Users/letic/OneDrive/2018/CDD/EstatisticaR/dados/exercicio1.csv", sep=";", dec=",",header=TRUE);

summary(dados$ï..Taxas.de.juros);
#media
media = mean(dados$ï..Taxas.de.juros)
png(filename='./graficos/EX01/media.png', width = 800, height = 500, pointsize = 16)
boxplot(media, main="Média", ylab="Taxa de juros")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)


#mediana
mediana = median(dados$ï..Taxas.de.juros);
png(filename='./graficos/EX01/mediana.png', width = 800, height = 500, pointsize = 16)
boxplot(mediana, main="Mediana", ylab="Taxa de juros")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)
#desvio-padrão
desvio_padrão = (sd(dados$ï..Taxas.de.juros));
png(filename='./graficos/EX01/desvio_padrao.png', width = 800, height = 500, pointsize = 16)
boxplot(desvio_padrão, main="Desvio padrão", ylab="Taxa de juros")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

variancia = var(dados$ï..Taxas.de.juros);
png(filename='./graficos/EX01/variancia.png', width = 800, height = 500, pointsize = 16)
boxplot(variancia, main="Variância", ylab="Taxa de juros")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

minimo = min(dados$ï..Taxas.de.juros);
png(filename='./graficos/EX01/minimo.png', width = 800, height = 500, pointsize = 16)
boxplot(minimo, main="Mínimo", ylab="Taxa de juros")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

maximo = max(dados$ï..Taxas.de.juros);
png(filename='./graficos/EX01/maximo.png', width = 800, height = 500, pointsize = 16)
boxplot(maximo, main="Máximo", ylab="Taxa de juros")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

quantis = quantile(dados$ï..Taxas.de.juros)
png(filename='./graficos/EX01/quantis.png', width = 800, height = 500, pointsize = 16)
boxplot(quantis, main="Quantis", ylab="Taxa de juros")
dev.off()  # usado em complemento com a funcao png (ou outras funcoes para 
# gerar arquivos graficos)

