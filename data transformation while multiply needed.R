
mydata=filter(Data,Index=="Ambagan")
data_trans=t.data.frame(mydata)
mydata2=data_trans[-c(1), ]
Data1c=data.frame(X1 = c(as.matrix(mydata2)))
data1col=Data1c[complete.cases(Data1c), ]
df=as.matrix(data1col)
df_mult= as.numeric(df)*44.448
ambagan= data.frame(df_mult)
final=data.frame(ambagan)
setwd("D:/Dr. Atiqur Rahman/Files From R")
writexl::write_xlsx(final, "Wind.xlsx")
