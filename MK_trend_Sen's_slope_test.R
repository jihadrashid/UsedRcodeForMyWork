

#loading packages
library(trend)
library(Kendall)
library(nortest)
library(tseries)
library(moments)
#setting working directory
setwd("C:/Users/Jerry/Desktop/Sumi")

#converting monthly data into timeseries
ts = ts(stFeni[15:18], frequency=1, start = c(1966))
plot(ts)
#MannKendall test on timeseries
#MannKendall(ts)
apply(ts_y,2,ww.test)
#sens.slope on timeseries
#ss=sens.slope(ts_y, conf.level = 0.99)
d=unlist(apply(stFeni,2,kurtosis))
View(d)
d_tbl=matrix(d, ncol =6, byrow = T)
d_tbl=as.data.frame.matrix(d_tbl)
d_tbl1=t.data.frame(d_tbl)
res_tbl=d_tbl1
colnames(res_tbl)=colnames(stFeni)
kurt=as.data.frame(d)


wwstat=res_tbl

res_tbl=cbind.data.frame(skew,kurt)

ww.test(ts_y)
shapiro.test(ts_y)
ad.test(ts_y)
cvm.test(ts_y)
sf.test(ts_y)
kpss.test(ts_y, null = "Trend")
#storing values into dataframe
p=mk$p.value
z=mk$statistic
tau=mk$estimates[3]
slp=ss$estimates
fdata=c(p,z,tau,slp)
fdata
#changing col names
#colnames(fdata)=c("Stations","p-value","z-value","Kendal's tau", "slope")
#final_tbl=as.data.frame(fdata)
sum=summary(stFeni)

#exporting data
writexl::write_xlsx(res_tbl, "D:/SUMI/Data/Data/Rainfall/res_tbl.xlsx" )
skewness
