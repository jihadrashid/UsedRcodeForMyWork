data=ts(data, start = c(1975,1),frequency = 12)
cycle(data)
jan=as.data.frame(subset(data, cycle(data) == 1))
jan[is.na(jan)]=0
feb=as.data.frame(subset(data, cycle(data) == 2))
feb[is.na(feb)]=0
mar=as.data.frame(subset(data, cycle(data) == 3))
mar[is.na(mar)]=0
apr=as.data.frame(subset(data, cycle(data) == 4))
apr[is.na(apr)]=0
may=as.data.frame(subset(data, cycle(data) == 5))
may[is.na(may)]=0
jun=as.data.frame(subset(data, cycle(data) == 6))
jun[is.na(jun)]=0
jul=as.data.frame(subset(data, cycle(data) == 7))
jul[is.na(jul)]=0
aug=as.data.frame(subset(data, cycle(data) == 8))
aug[is.na(aug)]=0
sep=as.data.frame(subset(data, cycle(data) == 9))
sep[is.na(sep)]=0
oct=as.data.frame(subset(data, cycle(data) == 10))
oct[is.na(oct)]=0
nov=as.data.frame(subset(data, cycle(data) == 11))
nov[is.na(nov)]=0
dec=as.data.frame(subset(data, cycle(data) == 12))
dec[is.na(dec)]=0

data=cbind.data.frame(jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec)
data=t.data.frame(data)
data=data.frame(rainfall = c(as.matrix(data)))
View(data)




