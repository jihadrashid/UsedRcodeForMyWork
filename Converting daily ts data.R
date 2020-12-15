library(xts)
ts <- xts(Rainfall_final$chittagong, as.Date(Rainfall_final$Date, "%Y-%m-%d"))
plot(ts)

ts_m = apply.monthly(ts, sum)
ts_y = apply.yearly(ts, sum)
ts_q = apply.quarterly(ts, sd)

plot(ts_y)


