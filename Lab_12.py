#Lab 12
import pandas as pd
import statistics as stat 
import numpy as np
#opening the database
banco_1 = pd.read_excel("Lab_12.xlsx", engine="openpyxl")
#calulating the mean 
banco_1["PIB per capita – variação (X)"].mean()
banco_1["%voto-Partido Incumbente (Y)"].mean()
#calculating the standard deviation
banco_1["PIB per capita – variação (X)"].std()
banco_1["%voto-Partido Incumbente (Y)"].std()

#calculating the covariance
banco_1 = banco_1.drop["Governo"]
banco_1 = banco_1.drop[0]
banco_1.groupby("Ano").cov()

cov_mat = np.stack(("PIB per capita – variação (X)","%voto-Partido Incumbente (Y)"))
np.shape(cov_mat)


