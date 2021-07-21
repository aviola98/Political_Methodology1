from scipy import stats
import pandas as pd

data = pd.read_excel("question_4.xlsx", engine="openpyxl")
data

#t-test
#using stats.ttest_ind_from_stats(mean1,sd1,n1,mean2,sd2,n2)

#t-test for comparing 2015-19 to 2020
stats.ttest_ind_from_stats(6.2,0.8,65,6.85,3.1,320)

#t-test comparing 2020 to 2015
stats.ttest_ind_from_stats(6.2,0.8,65,6.7,1.5,60)

#t-test comparing 2020 to 2016
stats.ttest_ind_from_stats(6.2,0.8,65,7.2,1.2,60)

#t-test comparing 2020 to 2017
stats.ttest_ind_from_stats(6.2,0.8,65,6.5,0.9,70)

#t-test comparing 2020 to 2018
stats.ttest_ind_from_stats(6.2,0.8,65,7.0,1.2,70)

#t-test comparing 2020 to 2019
stats.ttest_ind_from_stats(6.2,0.8,65,6.9,1.0,60)





