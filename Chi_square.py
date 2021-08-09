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