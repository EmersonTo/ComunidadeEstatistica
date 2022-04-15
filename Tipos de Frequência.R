install.packages("Hmisc")
require(Hmisc)

#Primeira forma de criar o vetor
idade = c(10,10,10,10,30,30,30,30,30,30,30,30,
          50,50,50,50,70,70,70,90)

#Seguda forma de criar o vetor
idade2 = c(rep(10,4), rep(30,8), rep(50,4),rep(70,3),90)

#Achando a Frequência simples (fi)
frequencia_simples = table(idade)

#Visual excel
dados_simples=data.frame(frequencia_simples)

#Frequência acumulada(fac)
frequencia_acumulada = cumsum(frequencia_simples)

#Adicionando coluna com acumulada
dados_simples$frequencia_acumulada=frequencia_acumulada

#Frequência relativa simples (fr)
frequencia_relativa_simples = frequencia_simples / sum(frequencia_simples)

#Adicionando a Frequência relativa simples
dados_simples$frequencia_relativa_simples = frequencia_relativa_simples


#Frequência relativa acumulada (frac)
frequencia_relativa_acumulada = frequencia_acumulada / sum(frequencia_simples)

#Adicionando matriz
dados_simples$frequencia_relativa_acumulada = frequencia_relativa_acumulada

#Achando automaticamente a frequência simples e relatativa
describe(idade)


##################################################################
# FAZENDO DE MANEIRA RESUMIDA ####################################

install.packages("dplyr")
library(dplyr)

dados_simples_tidy = dados_simples %>% 
                    mutate(frequencia_acumulada = cumsum(Freq),
                           frequencia_relativa_simples = Freq/sum(Freq),
                           frequencia_relativa_acumulada = cumsum(frequencia_relativa_simples))











