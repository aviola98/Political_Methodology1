import math
import pandas as pd
import numpy as np
import scipy.stats as stats

#ex2
#a

#m=1L -> m=1000mL
#SD=0,25L SD=250mL
#m_s=999.90mL
#N=25
#standard error

se=math.sqrt(999.9*(1000-999.9)/25)
z=(1000-999.9)/se

#b

(999.9-1000)/(250/25)^0.5

#ex 3
se1=math.sqrt(14*(100-14)/900)
z1=(15-14)/se1
se1
z1
se2=math.sqrt(12.2*(100-12.2)/900)
z2=(15-12.2)/se2


