#filtering a column
mydata=Dhaka_Rainfall_raw[-c(1:60),-c(2)]


#transposing dataframe
data_trans=t.data.frame(mydata)

#deleting first name_row
mydata2=data_trans[-c(1), ]

#getting whole data in one column
Data1c=data.frame(X1 = c(as.matrix(mydata2)))

#deleting no data
dhaka=Data1c[complete.cases(Data1c), ]
dhaka=as.data.frame(dhaka)

#Binding all single column into one
final= cbind.data.frame(col1, col2, col3)
View(final)
setwd("D:/Dr. Atiqur Rahman/Files From R")
dataframe=data.frame(dhaka)
writexl::write_xlsx(dataframe, "dhk_rain.xlsx")
