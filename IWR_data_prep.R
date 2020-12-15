library(xts)
#1975
MinT_month = MinT_month[-c(469:473), ]
ts = xts(as.numeric(MinT_month$Mymensingh), as.yearmon(MinT_month$Date))
Tmin = ts["1975"]

ts = xts(as.numeric(MxT_month$Rangpur), as.yearmon(MxT_month$Date))
Tmax = ts["1975"]

ts = xts(as.numeric(Humidity_month$Rangpur), as.yearmon(Humidity_month$Date))
RH = ts["1975"]

ts = xts(as.numeric(Wind_month$Rangpur), as.yearmon(Wind_month$Date))
Wind = ts["1975"]
Wind = as.numeric(Wind)*44.448

ts = xts(as.numeric(Sunshine_month$Rangpur), as.yearmon(Sunshine_month$Date))
Sunshine = ts["1975"]

climate = cbind(Tmin, Tmax, RH, Wind, Sunshine)
setwd("D:/Dr. Atiqur Rahman/2015")
climate= as.data.frame(climate)
writexl::write_xlsx(climate, "climate_75.xlsx")

ts = xts(as.numeric(Rainfall_month$Rangpur), as.yearmon(Rainfall_month$Date))
Rainfall = ts["1975"]

setwd("D:/Dr. Atiqur Rahman/2015")
Rainfall= as.data.frame(Rainfall)
writexl::write_xlsx(Rainfall, "rainfall_75.xlsx")

#1983
ts = xts(as.numeric(MinT_month$Rangpur), as.yearmon(MinT_month$Date))
Tmin = ts["1983"]

ts = xts(as.numeric(MxT_month$Rangpur), as.yearmon(MxT_month$Date))
Tmax = ts["1983"]

ts = xts(as.numeric(Humidity_month$Rangpur), as.yearmon(Humidity_month$Date))
RH = ts["1983"]

ts = xts(as.numeric(Wind_month$Rangpur), as.yearmon(Wind_month$Date))
Wind = ts["1983"]
Wind = as.numeric(Wind)*44.448

ts = xts(as.numeric(Sunshine_month$Dhaka), as.yearmon(Sunshine_month$Date))
Sunshine = ts["1983"]

climate = cbind(Tmin, Tmax, RH, Wind, Sunshine)
setwd("D:/Dr. Atiqur Rahman/2015")
climate= as.data.frame(climate)
writexl::write_xlsx(climate, "climate_83.xlsx")

ts = xts(as.numeric(Rainfall_month$Dhaka), as.yearmon(Rainfall_month$Date))
Rainfall = ts["1983"]

setwd("D:/Dr. Atiqur Rahman/2015")
Rainfall= as.data.frame(Rainfall)
writexl::write_xlsx(Rainfall, "rainfall_83.xlsx")

#1991

ts = xts(as.numeric(MinT_month$Dhaka), as.yearmon(MinT_month$Date))
Tmin = ts["1991"]

ts = xts(as.numeric(MxT_month$Dhaka), as.yearmon(MxT_month$Date))
Tmax = ts["1991"]

ts = xts(as.numeric(Humidity_month$Dhaka), as.yearmon(Humidity_month$Date))
RH = ts["1991"]

ts = xts(as.numeric(Wind_month$Dhaka), as.yearmon(Wind_month$Date))
Wind = ts["1991"]
Wind = as.numeric(Wind)*44.448

ts = xts(as.numeric(Sunshine_month$Dhaka), as.yearmon(Sunshine_month$Date))
Sunshine = ts["1991"]

climate = cbind(Tmin, Tmax, RH, Wind, Sunshine)
setwd("D:/Dr. Atiqur Rahman/2015")
climate= as.data.frame(climate)
writexl::write_xlsx(climate, "climate_91.xlsx")

ts = xts(as.numeric(Rainfall_month$Dhaka), as.yearmon(Rainfall_month$Date))
Rainfall = ts["1991"]

setwd("D:/Dr. Atiqur Rahman/2015")
Rainfall= as.data.frame(Rainfall)
writexl::write_xlsx(Rainfall, "rainfall_91.xlsx")

#1999
ts = xts(as.numeric(MinT_month$Dhaka), as.yearmon(MinT_month$Date))
Tmin = ts["1999"]

ts = xts(as.numeric(MxT_month$Dhaka), as.yearmon(MxT_month$Date))
Tmax = ts["1999"]

ts = xts(as.numeric(Humidity_month$Dhaka), as.yearmon(Humidity_month$Date))
RH = ts["1999"]

ts = xts(as.numeric(Wind_month$Dhaka), as.yearmon(Wind_month$Date))
Wind = ts["1999"]
Wind = as.numeric(Wind)*44.448

ts = xts(as.numeric(Sunshine_month$Dhaka), as.yearmon(Sunshine_month$Date))
Sunshine = ts["1999"]

climate = cbind(Tmin, Tmax, RH, Wind, Sunshine)
setwd("D:/Dr. Atiqur Rahman/2015")
climate= as.data.frame(climate)
writexl::write_xlsx(climate, "climate_99.xlsx")

ts = xts(as.numeric(Rainfall_month$Dhaka), as.yearmon(Rainfall_month$Date))
Rainfall = ts["1999"]

setwd("D:/Dr. Atiqur Rahman/2015")
Rainfall= as.data.frame(Rainfall)
writexl::write_xlsx(Rainfall, "rainfall_99.xlsx")

#2007

ts = xts(as.numeric(MinT_month$Dhaka), as.yearmon(MinT_month$Date))
Tmin = ts["2007"]

ts = xts(as.numeric(MxT_month$Dhaka), as.yearmon(MxT_month$Date))
Tmax = ts["2007"]

ts = xts(as.numeric(Humidity_month$Dhaka), as.yearmon(Humidity_month$Date))
RH = ts["2007"]

ts = xts(as.numeric(Wind_month$Dhaka), as.yearmon(Wind_month$Date))
Wind = ts["2007"]
Wind = as.numeric(Wind)*44.448

ts = xts(as.numeric(Sunshine_month$Dhaka), as.yearmon(Sunshine_month$Date))
Sunshine = ts["2007"]

climate = cbind(Tmin, Tmax, RH, Wind, Sunshine)
setwd("D:/Dr. Atiqur Rahman/2015")
climate= as.data.frame(climate)
writexl::write_xlsx(climate, "climate_07.xlsx")

ts = xts(as.numeric(Rainfall_month$Dhaka), as.yearmon(Rainfall_month$Date))
Rainfall = ts["2007"]

setwd("D:/Dr. Atiqur Rahman/2015")
Rainfall= as.data.frame(Rainfall)
writexl::write_xlsx(Rainfall, "rainfall_07.xlsx")