import pandas as pd
from scipy.stats import chi2_contingency

data = pd.read_excel("contingency_table.xlsx", engine="openpyxl")
data

data = data.drop(3)
data = data.drop('Unnamed: 0', axis=1)
data

chiVal, piVal, df, exp = chi2_contingency(data)
chiVal, piVal, df, exp
