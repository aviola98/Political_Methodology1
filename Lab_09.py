import pandas as pd
import numpy as np
import random 
import statistics as st

#opening dataframe
banco_tempo = pd.read_excel("Banco_Lab 08.xlsx",engine="openpyxl")

#removing Unnamed columns
banco_tempo = banco_tempo.loc[:, ~banco_tempo.columns.str.contains('^Unnamed')]

#randomly selecting 5 answers and storing it in a new dataframe

banco_tempo_sample=banco_tempo.sample(n = 5)
#converting the numbers to numeric value in order to do the calculations below
banco_tempo_sample=banco_tempo_sample.apply(pd.to_numeric)

#pivoting the datatable in order to do the calculations below

#calculating the mean of the sample
banco_tempo_sample

df = pd.DataFrame({'ID': ['P2', 'P2', 'P2', 'P2', 'P2'],
                   'Values': [60,10,45,40,15]
                   })
df

#calculate mean
data=[60,10,45,40,15]
mean=st.mean(data)
mean
#calculate standard deviation
stdev=st.stdev(data)
stdev

#calculate the confidence interval of 68% 

def mean_confidence_interval(data, confidence=0.68):
  a=1.0*np.array(data)
  n=len(a)
  m,se=np.mean(a), scipy.stats.sem(a)
  h=se*scipy.stats.t.ppf((1+confidence) / 2.,n-1)
  return m, m-h, m+h


