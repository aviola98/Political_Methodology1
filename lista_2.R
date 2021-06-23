#Lista 2

local ({
  .Table <- data.frame(Probability=dbinom(0:3, size=3,prob=0.5))
  rownames(.Table) <- 0:3
  print
})

#opening data
library(tidyverse)
library(knitr)
library(readODS)
library(ggplot2)

banco_tempo <- read_ods("banco_tempo.ods")
View(banco_tempo)

#calculating descriptive statistics for the variable time
estatisticas_descritivas_tempo <- banco_tempo %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo",
        col.names=c("Média","Mediana","Desvio Padrão",
                    "Máximo","Mínimo"))

estatisticas_descritivas_tempo

#descriptive statistics by time per zone

estatisticas_descritivas_norte <- banco_tempo %>%
  filter(Zona=="NORTE") %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo",
        col.names=c("Média","Mediana","Desvio Padrão",
                    "Máximo","Mínimo"))

estatisticas_descritivas_sul <- banco_tempo %>%
  filter(Zona=="SUL") %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo",
        col.names=c("Média","Mediana","Desvio Padrão",
                    "Máximo","Mínimo"))

estatisticas_descritivas_leste <- banco_tempo %>%
  filter(Zona=="LESTE") %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo",
        col.names=c("Média","Mediana","Desvio Padrão",
                    "Máximo","Mínimo"))

estatisticas_descritivas_oeste <- banco_tempo %>%
  filter(Zona=="OESTE") %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo",
        col.names=c("Média","Mediana","Desvio Padrão",
                    "Máximo","Mínimo"))
estatisticas_descritivas_tempo
estatisticas_descritivas_norte
estatisticas_descritivas_sul
estatisticas_descritivas_leste
estatisticas_descritivas_oeste
#histograma

banco_tempo %>%
  ggplot() +
  geom_histogram(aes(x=Tempo),
                 binwidth = 9,
                 color="black",
                 fill="orange")


