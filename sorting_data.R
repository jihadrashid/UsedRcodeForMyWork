library(dplyr)
library(tidyr)
data=filter(X3_Hourly_Dry_bulb_Temp_, X3_Hourly_Dry_bulb_Temp_$Index==11921)
data=data[ ,-(1:3)]
hr0=filter(data, Tm==0)
hr0=hr0[-1]
hr0=data.frame(X1 = c(as.matrix(hr0)))
hr0=as.data.frame(hr0[!(apply(x, 1, function(y) any(y == 0))),])
colnames(hr0)[1]="T"
hr0$T[hr0$T=='****']=NA

data=Tide_Annual_data_of_Sandwip_station
data.t=t.data.frame(data[2:13])
sand=data.frame(Sandwip = c(as.matrix(data.t)))
writexl::write_xlsx(sand, "D:/SUMI/Data/SL/sand.xlsx")


hr3=filter(data, Tm==3)
hr3=hr3[-1]
hr3=data.frame(X1 = c(as.matrix(hr3)))
hr3=as.data.frame(hr3[!(apply(x, 1, function(y) any(y == 0))),])
colnames(hr3)[1]="T"
hr3$T[hr3$T=='****']=NA

hr6=filter(data, Tm==6)
hr6=hr6[-1]
hr6=data.frame(X1 = c(as.matrix(hr6)))
hr6=as.data.frame(hr6[!(apply(x, 1, function(y) any(y == 0))),])
colnames(hr6)[1]="T"
hr6$T[hr6$T=='****']=NA


hr9=filter(data, Tm==9)
hr9=hr9[-1]
hr9=data.frame(X1 = c(as.matrix(hr9)))
hr9=as.data.frame(hr9[!(apply(x, 1, function(y) any(y == 0))),])
colnames(hr9)[1]="T"
hr9$T[hr9$T=='****']=NA


hr12=filter(data, Tm==12)
hr12=hr12[-1]
hr12=data.frame(X1 = c(as.matrix(hr12)))
hr12=as.data.frame(hr12[!(apply(x, 1, function(y) any(y == 0))),])
colnames(hr12)[1]="T"
hr12$T[hr12$T=='****']=NA



hr15=filter(data, Tm==15)
hr15=hr15[-1]
hr15=data.frame(X1 = c(as.matrix(hr15)))
hr15=as.data.frame(hr15[!(apply(x, 1, function(y) any(y == 0))),])
colnames(hr15)[1]="T"
hr15$T[hr15$T=='****']=NA



hr18=filter(data, Tm==18)
hr18=hr18[-1]
hr18=data.frame(X1 = c(as.matrix(hr18)))
hr18=as.data.frame(hr18[!(apply(x, 1, function(y) any(y == 0))),])
colnames(hr18)[1]="T"
hr18$T[hr18$T=='****']=NA




hr21=filter(data, Tm==21)
hr21=hr21[-1]
hr21=data.frame(X1 = c(as.matrix(hr21)))
hr21=as.data.frame(hr21[!(apply(x, 1, function(y) any(y == 0))),])
colnames(hr21)[1]="T"
hr21$T[hr21$T=='****']=NA

setwd("D:/Dr. Atiqur Rahman/ctg_hour")
writexl::write_xlsx(hr21, "hr21.xlsx")

