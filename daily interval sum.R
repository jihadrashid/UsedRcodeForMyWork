#required packages

library(xts)
library(zoo)

#getting two column 
ambagan_df= Rainfall[ ,c(1:2)]

#converting dataframe into xts
ts <- xts(ambagan_df$barishal, as.Date(ambagan_df$Date, "%Y-%m-%d"))

#subsetting into days
ep <- endpoints(ts,'days',k=5)

#summation of values
five_day_int=period.sum(x=ts, ep)

setwd("D:/Dr. Atiqur Rahman/Files From R")
dataframe=data.frame(five_day_int)
writexl::write_xlsx(dataframe, "Interval_data.xlsx")

#another way of subsetting
five_day_int2=aggregate(ambagan_df$barishal~cut(Date, "5 days"), ambagan_df, max)                                                      
                    