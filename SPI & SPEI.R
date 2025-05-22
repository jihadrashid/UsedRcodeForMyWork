library(SPEI)
library(xts)

# converting data to xts object
ts_temp <- xts(SPI$Tmean, as.Date(SPI$Date, "%Y-%m-%d"))
ts_pre <- xts(SPI$Prec, as.Date(SPI$Date, "%Y-%m-%d"))

#converting daily data to monthly data
ts_temp_month = apply.monthly(ts_temp, mean)
ts_pre_month = apply.monthly(ts_pre, sum)

#monthly xts to dataframe
data_t=as.data.frame(ts_temp_month)
data_p=as.data.frame(ts_pre_month)
data=cbind.data.frame(data_p$V1,data_t$V1)


# Compute potential evapotranspiration (PET) and climatic water balance (BAL)
#Only "temperature(mean) and latitude" argument is used
data$PET=thornthwaite(data$`data_t$V1` ,22.350)
#Precipitation minus PET is equal to Waterbalance
data$BAL=data$`data_p$V1`-data$PET

# Convert to a ts (time series) object for convenience
data=ts(data[,c(1:4)], end=c(2018,12), frequency=12)
plot.ts(data)

# SPEI for one month
spei=spei(data_spei[,'BAL'], 1)
# SPI for one month
spi=spi(data_spei[, 'data_p$V1'], 1)


# Plot spei object
par(mfrow=c(2,1))
plot(spei, main='Ambagan, SPEI-1')
plot(spi, 'Ambagan, SPI-1')


