import pandas as pd
from scipy.stats import chi2_contingency

data = pd.read_excel("TESTEE.xlsx", engine="openpyxl")
data

data = data.drop([5])
data = data.drop(columns = ['Total','Regiões'])
data

chiVal, piVal, df, exp = chi2_contingency(data)
chiVal, piVal, df, exp
