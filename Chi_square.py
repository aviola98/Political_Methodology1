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

