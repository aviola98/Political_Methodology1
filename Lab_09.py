import pandas as pd
import random 
import statistics as st

#opening dataframe
banco_tempo = pd.read_excel("Banco_Lab 08.xlsx",engine="openpyxl")

#removing Unnamed columns
banco_tempo = banco_tempo.loc[:, ~banco_tempo.columns.str.contains('^Unnamed')]

#randomly selecting 5 answers and storing it in a new dataframe

banco_tempo_sample=banco_tempo.sample(n = 5)

banco_tempo_sample

#pivoting the datatable in order to do the calculations below



#calculating the mean of the sample


