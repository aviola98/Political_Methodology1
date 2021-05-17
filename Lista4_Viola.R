library(tidyverse)
library(dplyr)
library(readxl)
library(ggplot2)

#abrindo o banco de dados no R


Banco_Lab4 <- read_excel("Banco_Lab 04_novo.xlsx")

View(Banco_Lab4)


#calculando estatisticas descritivas

#calculo media 
Banco_Lab4 %>% 
  summarize(enep_media=mean(enep, na.rm=T),
            enpp_media=mean(enpp, na.rm=T),
            seats_media=mean(seats, na.rm=T),
            legislative_type_media=mean(legislative_type, na.rm=T))

#calculo mediana

Banco_Lab4[Banco_Lab4$enep!=-99.00,] %>%
  summarize(enep_mediana=median(enep, na.rm=T))

Banco_Lab4 %>%
  summarize(enep_mediana=median(enep,na.rm=T),
            enpp_mediana=median(enpp, na.rm=T),
            seats_mediana=median(seats, na.rm=T),
            legislative_type_median=median(legislative_type, na.rm=T))

#calculo desvio padrão  

Banco_Lab4 %>%
  summarize(enep_sd=sd(enep,na.rm=T),
            enpp_sd=sd(enpp, na.rm=T),
            seats_sd=sd(seats, na.rm=T),
            legislative_type_sd=sd(legislative_type, na.rm=T))

#calculo quantil 

Banco_Lab4 %>%
  summarize(enep_25=quantile(enep, probs=0.25, na.rm=T),
            enpp_25=quantile(enpp, probs=0.25, na.rm=T),
            seats_25=quantile(seats, probs=0.25, na.rm=T),
            legislative_type_25=quantile(legislative_type, probs=0.25, na.rm=T))

Banco_Lab4 %>%
  summarize(enep_75=quantile(enep, probs=0.75, na.rm=T),
            enpp_75=quantile(enpp, probs=0.75, na.rm=T),
            seats_75=quantile(seats, probs=0.75, na.rm=T),
            legislative_type_75=quantile(legislative_type, probs=0.75, na.rm=T))


#grafico 

Banco_Lab4[Banco_Lab4$enep!=-99.00,] %>%
  ggplot() +
  geom_histogram(aes(x=enep),binwidth=1,
                 colour="black", 
                 fill="blue") +
  xlab("Numero Efetivo de Partidos") +
  ylab("Count")

Banco_Lab4 %>%
  ggplot() +
  geom_histogram(aes(x=enpp),
                 colour="black",
                 fill="green") +
  xlab("Numero Efetivo de Partidos no Parlamento (Legislativo)") +
  ylab("Counts")

Banco_Lab4 %>%
  ggplot() +
  geom_histogram(aes(x=seats),
                 colour="black",
                 fill="orange") +
  xlab("Número total de assentos na câmara baixa da legislatura nacional") +
  ylab("Count")


Banco_Lab4 %>%
  ggplot() +
  geom_histogram(aes(x=legislative_type),
                 colour="black",
                 fill="white") +
  xlab("Tipo de Legislativo") +
  ylab("Count")

Banco_Lab4[Banco_Lab4$enep!=-99.00,] %>%
  ggplot() +
  geom_point(aes(x=seats,
                 y=enep,
                 color=legislative_type)) +
  xlab("Número de Partidos")+
  ylab("Número de Assentos")
