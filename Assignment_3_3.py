from scipy import stats
import pandas as pd

data = pd.read_excel("question_4.xlsx", engine="openpyxl")
data

#t-test
#using stats.ttest_ind_from_stats(mean1,sd1,n1,mean2,sd2,n2)

#t-test for comparing 2015-19 to 2020
stats.ttest_ind_from_stats(mean1=6.2,std1=0.8,n1=65,mean2=6.85,std2=3.1,n2=320)

#t-test comparing 2020 to 2015
stats.ttest_ind_from_stats(mean1=6.2,std1=0.8,n1=65,mean2=6.7,std2=1.5,n2=60)

#t-test comparing 2020 to 2016
stats.ttest_ind_from_stats(mean1=6.2,std1=0.8,n1=65,mean2=7.2,std2=1.2,n2=60)

#t-test comparing 2020 to 2017
stats.ttest_ind_from_stats(mean1=6.2,std1=0.8,n1=65,mean2=6.5,std2=0.9,n2=70)

#t-test comparing 2020 to 2018
stats.ttest_ind_from_stats(mean1=6.2,std1=0.8,n1=65,mean2=7.0,std2=1.2,n2=70)

#t-test comparing 2020 to 2019
stats.ttest_ind_from_stats(mean1=6.2,std1=0.8,n1=65,mean2=6.9,std2=1.0,n2=60)





