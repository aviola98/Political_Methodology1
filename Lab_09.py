import pandas as pd

#opening dataframe
banco_tempo = pd.read_excel("Banco_Lab 08.xlsx",engine="openpyxl")

#removing Unnamed columns
banco_tempo = banco_tempo.loc[:, ~banco_tempo.columns.str.contains('^Unnamed')]

#randomly selecting 5 answers and storing it in a new dataframe

