import pandas as pd
from scipy import stats
import pandas as pd
from scipy.stats import chi2_contingency 

#2002
data = {
                   'Incumbente':[38.1,36.4],
                   'Esp':[37.6,36.9],
                   'Oposição':[57.6,57.6],
    'Esp2':[58.1,57.1]

}

#data = {
             #      'Incumbente':[38.1,36.4],
                  
     #              'Oposição':[57.6,57.6],

          #         }

df = pd.DataFrame(data)
print(df)

chiVal, piVal, df, exp = chi2_contingency(df)
chiVal, piVal, df, exp
#p>5% we can't reject the null hypotesis

#2006
data = {'Incumbente':[43.9,57.2],
       'Esp':[50.8,50.3],
       'Oposição':[51.2,36.8],
       'Esp2':[44.3,43.7]}


df = pd.DataFrame(data)

print(df)

chiVal, piVal, df, exp = chi2_contingency(df)
chiVal, piVal, df, exp
#p-value<5% we can reject the null Hypotesis

#2010
data = {'Incumbente':[38.7,52.3],
       'Esp':[45.8,45.2],
       'Oposição':[56,41],
       'Esp2':[48.9,48.1]}


df = pd.DataFrame(data)

print(df)

chiVal, piVal, df, exp = chi2_contingency(df)
chiVal, piVal, df, exp
#p-value<5% we can reject the null hypotesis

#2014
data = {'Incumbente':[21.9,48.4],
       'Esp':[35.4,34.9],
       'Oposição':[73.4,45.3],
       'Esp2':[59.9,58.8]}


df = pd.DataFrame(data)

print(df)

chiVal, piVal, df, exp = chi2_contingency(df)
chiVal, piVal, df, exp
#pi-value<5% we can reject the null hypotesis

#2018
data = {'Incumbente':[26.7,40.6],
       'Esp':[34,33.3],
       'Oposição':[65.5,49.8],
       'Esp2':[58.2,57.1]}


df = pd.DataFrame(data)

print(df)

chiVal, piVal, df, exp = chi2_contingency(df)
chiVal, piVal, df, exp
#p-value < 5% we can reject the null hypotesis