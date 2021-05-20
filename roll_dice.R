#simulating dice roll
library(tidyverse)
#creating a dice with 3 random rolls
x1 <- sample(1:6, size = 3, replace = TRUE)

#mean
m_x1 <- mean(x1)
m_x1

#standard deviation 
sd.x1 <- sd(x1)
sd.x1

#FREQUENCY
#dice with 600 random rolls
x2 <- sample(1:6, size = 600 , replace = T)

#absolute frequency
af <- table(x2)
af

#relative frequency

rf <- (table(x2)/length(x2))*100
rf

#we notice that when you roll out the dices 600 times the mean and sd values get closer to their expected value 
#mean and sd of the sample

m_x2 <- mean(x2)
m_x2

sd_x2 <- sd(x2)
sd_x2

#6000 rolls

x3 <- sample(1:6, size=6000, replace=T)
m_x3 <- mean(x3)
m_x3

sd_x3 <- sd(x3)
sd_x3

#60 rolls

x4 <- sample(1:6, size=60, replace=T)

m_x4 <- mean(x4)
m_x4

sd_x4 <- sd(x4)
sd_x4

#the first n obsrrvations are very informative, from a certain point you are only repeating information therefore there is less fit
#that's why it gets better from 60 to 600 but from 600 to 6000 there's less fit

