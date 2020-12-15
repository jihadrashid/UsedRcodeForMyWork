library(forecast)

#Data converting into monthly format, for weekly frequency would be 52 and 365  for daily
ts <- xts(as.numeric(Rainfall_final$barishal), as.Date(Rainfall_final$Date, "%Y-%m-%d"))
data= ts(ts_m, frequency=12 , start= c(1975,01), end= c(2018,12))

#fitting auto arima model
fit=auto.arima(data)

#forecasting data
forecast_data=forecast(fit,120)

forecast_data
#plotting 
plot(forecast_data, include =0)
