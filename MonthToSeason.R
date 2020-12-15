library(dplyr)
data=as.data.frame(ts_m)
data=ts(data$V1, start=c(1975,12), frequency=12)
cycle(data)

jan=as.data.frame(subset(data, cycle(data) == 1))
feb=as.data.frame(subset(data, cycle(data) == 2))
mar=as.data.frame(subset(data, cycle(data) == 3))
apr=as.data.frame(subset(data, cycle(data) == 4))
may=as.data.frame(subset(data, cycle(data) == 5))
jun=as.data.frame(subset(data, cycle(data) == 6))
jul=as.data.frame(subset(data, cycle(data) == 7))
aug=as.data.frame(subset(data, cycle(data) == 8))
sep=as.data.frame(subset(data, cycle(data) == 9))
oct=as.data.frame(subset(data, cycle(data) == 10))
nov=as.data.frame(subset(data, cycle(data) == 11))
dec=as.data.frame(subset(data, cycle(data) == 12))

myMonth=cbind(dec,jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov)
colnames(myMonth)=c("Dec","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov")
class(myMonth)
mySeason= myMonth%>%
  mutate(DJF=Dec+Jan+Feb,
         MAM=Mar+Apr+May,
         JJAS=Jun+Jul+Aug+Sep,
         ON=Oct+Nov)
ssn_trn=t.data.frame(mySeason[13:16])

ssn_TS=data.frame(Seasonal_PPT = c(as.matrix(ssn_trn)))



writexl::write_xlsx(mySeason,"D:/Rd/Seasonal_Towhid.xlsx")
