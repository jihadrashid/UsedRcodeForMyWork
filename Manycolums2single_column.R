# All column into single column....
Dhaka3H=data.frame(X1 = c(as.matrix(DRY_BULB_DHAKA_3_HOUR)))
 
# Deleting NA values..
Final_dhaka3H=Dhaka3H[complete.cases(Dhaka3H), ]
