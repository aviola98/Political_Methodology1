#Lab 12
import pandas as pd
import statistics as stat 
import numpy as np
import matplotlib.pyplot as plt

#opening the database
banco_1 = pd.read_excel("Lab_12.xlsx", engine="openpyxl")
#calulating the mean 
mean_gdp_1 = banco_1["PIB per capita – variação (X)"].mean()
mean_vote_1 = banco_1["%voto-Partido Incumbente (Y)"].mean()
#calculating the standard deviation
stdgdp_1 = ["PIB per capita – variação (X)"].std()
stdvote_1 = ["%voto-Partido Incumbente (Y)"].std()

print(mean_gdp_1)
print(mean_vote_1)
print(stdgdp_1)
print(stdvote_1)

#calculating the covariance
banco_1 = banco_1.drop(0)
covariancia =banco_1.cov()
covariancia
#scatter plot
pib = [1441.000,3740.000,-1465.000,1275.000,2865.000,6596.000,-0.028]
votos = [4700,54300,53100,23200,48610,46910,51640]

plt.scatter(pib,votos)
plt.title("Correlation between GDP and Vote")
plt.xlabel("Votes")
plt.ylabel("GDP")
plt.show()

#opening database 2

banco_2 = pd.read_excel("Lab_12_2.xlsx", engine="openpyxl")

#calulating the mean 
mean_gdp_2 = banco_2["PIB per capita – variação (X)"].mean()
mean_vote_2 = banco_2["%voto-Partido Incumbente (Y)"].mean()
#calculating the standard deviation
std_gdp_2 = banco_2["PIB per capita – variação (X)"].std()
std_vote_2 = banco_2["%voto-Partido Incumbente (Y)"].std()

print(mean_gdp_2)
print(mean_vote_2)
print(std_gdp_2)
print(std_vote_2)

#calculating the covariance
banco_2 = banco_2.drop([0,4])
covariancia_2 = banco_2.cov()
covariancia_2

#scatter plot
pib_2 = [0.751,4230.000,5126.000,1441.000,3740.000,-1465.000,1275.000,2865.000,6596.000,-0.028]
votos_2 = [20560,33831,30563,4700,54300,53100,23200,48610,46910,51640]

plt.scatter(pib_2,votos_2)
plt.title("Correlation between GDP and Vote")
plt.xlabel("Votes")
plt.ylabel("GDP")
plt.show()
