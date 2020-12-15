library(trend)
library(Kendall)
library(xts)

data=as.data.frame(apply.monthly(xts(MinTempFinal[35],as.Date(MinTempFinal$Date,"%Y-%m-%d")), mean))
data_ts=ts(data$Teknaf, end = c(2018,12,31), frequency = 12)
#[1] "Date"        "Barisal"     "Bhola"       "Bogra"       "Chandpur"    "Chittagong"  "Chuadanga"   "Comilla"    
#[9] "Cox"         "Dhaka"       "Dinajpur"    "Faridpur"    "Feni"        "Hatiya"      "Ishurdi"     "Jessore"    
#[17] "Khepupara"   "Khulna"      "Kutubdia"    "Madaripur"   "Maijdicourt" "Mongla"      "Mymensingh"  "Patuakhali" 
#[25] "Rajshahi"    "Rangamati"   "Rangpur"     "Sandwip"     "Satkhira"    "Sitakunda"   "Srimangal"   "Syedpur"    
#[33] "Sylhet"      "Tangail"     "Teknaf"

jan=as.ts(subset(data_ts, cycle(data_ts) == 1))
ss=sens.slope(jan)
mk=SeasonalMannKendall(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
Jan=c(p,Tau,slope)
output=as.data.frame(Jan)

jan=as.ts(subset(data_ts, cycle(data_ts) == 2))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Feb=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 3))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Mar=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 4))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Apr=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 5))
mk=SeasonalMannKendall(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$May=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 6))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Jun=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 7))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Jul=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 8))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Aug=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 9))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Sep=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 10))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Oct=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 11))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Nov=c(p,Tau,slope)

jan=as.ts(subset(data_ts, cycle(data_ts) == 12))
mk=SeasonalMannKendall(jan)
ss=sens.slope(jan)
Tau=mk$tau
p=mk$sl[1]
slope=ss$estimates
output$Dec=c(p,Tau,slope)

Teknaf=output



#final_data=rbind.data.frame(Bhola, Bogra,Chandpur,Chittagong,Chuadanga,
#                            Comilla,Cox_Bazar,Dhaka,Dinajpur,Faridpur,Feni,Hatiya,
#                            Ishurdi,Jessore,Khepupara,Khulna,Kutubdia,Madaripur,
#                            MaijdeeCourt,Mongla,Mymensingh,Patuakhali,Rajshahi,
#                            Rangamati,Rangpur,Sandwip,Satkhira,Sitakunda,Soyedpur,
#                            Srimangal,Sylhet,Tangail,Teknaf)

#st_name=c('Barishal','Bhola', 'Bogra','Chandpur','Chittagong','Chuadanga',
#           'Comilla','Cox_Bazar','Dhaka','Dinajpur','Faridpur','Feni','Hatiya',
#           'Ishurdi','Jessore','Khepupara','Khulna','Kutubdia','Madaripur',
#           'MaijdeeCourt','Mongla','Mymensingh','Patuakhali','Rajshahi',
#           'Rangamati','Rangpur','Sandwip','Satkhira','Sitakunda','Soyedpur',
#           'Srimangal','Sylhet','Tangail','Teknaf')

#Stat=c('P','MK','SS')

#Statistics=rep(Stat,times=34)
#st_name=rep(st_name, each=3)

#final_data=cbind.data.frame(st_name,Statistics,final_data)

#writexl::write_xlsx(final_data,"D:/Rd/Maxt_Analysis.xlsx")
