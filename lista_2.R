#Lista 2
#margin of error
#setting the total n  
n<- 2071
#margin of error for approval (march and may)
me_apr_mar <- 100*(1.96*sqrt(0.3*(1-0.3)/n))
me_apr_may <- 100*(1.96*sqrt(0.24*(1-0.24)/n))
#margin of error for reproval (march and may)
me_repr_mar <-100*(1.96*sqrt(0.44*(1-0.44)/n))
me_repr_may <- 100*(1.96*sqrt(0.45*(1-0.45)/n))
#margin of error for regular (march and may)
me_reg_mar <- 100*(1.96*sqrt(0.24*(1-0.24)/n))
me_reg_may <- 100*(1.96*sqrt(0.30*(1-0.30)/n))

#using the Bernoulli and the Binomial Distributions of probability in order calculate 
#the probability of success
library(Rlab)
#Binomial
dbinom(0:1, size=1,p=0.68)
#Bernoulli
pbern(1, 0.68)


#testing the binomial distribution for n=3 and n=36 
plot(dbinom(0:36,size=36,prob=0.5))
plot(dbinom(0:3, size=3, prob=0.5))

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
            primeiro_q=quantile(Tempo, probs=0.25),
            terceiro_q=quantile(Tempo, probs=0.75),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo",
        col.names=c("Média","Mediana","Desvio Padrão","Primeiro Quartil","Terceiro Quartil",
                    "Máximo","Mínimo"))

estatisticas_descritivas_tempo

#descriptive statistics by time per zone

estatisticas_descritivas_norte <- banco_tempo %>%
  filter(Zona=="NORTE") %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            primeiro_q=quantile(Tempo, probs=0.25),
            terceiro_q=quantile(Tempo, probs=0.75),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo-Zona Norte",
        col.names=c("Média","Mediana","Desvio Padrão","Primeiro Quartil","Terceiro Quartil",
                      "Máximo","Mínimo"))

estatisticas_descritivas_sul <- banco_tempo %>%
  filter(Zona=="SUL") %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            primeiro_q=quantile(Tempo, probs=0.25),
            terceiro_q=quantile(Tempo, probs=0.75),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo-Zona Sul",
        col.names=c("Média","Mediana","Desvio Padrão","Primeiro Quartil","Terceiro Quartil",
                    "Máximo","Mínimo"))

estatisticas_descritivas_leste <- banco_tempo %>%
  filter(Zona=="LESTE") %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            primeiro_q=quantile(Tempo, probs=0.25),
            terceiro_q=quantile(Tempo, probs=0.75),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo-Zona Leste",
        col.names=c("Média","Mediana","Desvio Padrão","Primeiro Quartil","Terceiro Quartil",
                    "Máximo","Mínimo"))

estatisticas_descritivas_oeste <- banco_tempo %>%
  filter(Zona=="OESTE") %>%
  summarize(mean_time=mean(Tempo),
            median_time=median(Tempo),
            sd_time=sd(Tempo),
            primeiro_q=quantile(Tempo, probs=0.25),
            terceiro_q=quantile(Tempo, probs=0.75),
            max_time=max(Tempo),
            min_time=min(Tempo)) %>%
  kable(caption="Estatísticas Descritivas para Tempo-Zona Oeste",
        col.names=c("Média","Mediana","Desvio Padrão","Primeiro Quartil","Terceiro Quartil",
                    "Máximo","Mínimo"))

estatisticas_descritivas_tempo
estatisticas_descritivas_norte
estatisticas_descritivas_sul
estatisticas_descritivas_leste
estatisticas_descritivas_oeste

#histogram

banco_tempo %>%
  ggplot() +
  geom_histogram(aes(x=Tempo),
                 binwidth = 9,
                 color="black",
                 fill="orange",
                 alpha=0.5) +
  ggtitle("Histograma do Tempo") +
  theme_minimal()


