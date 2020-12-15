T=Summary[,1]
T=ts(T, start = 1951, frequency = 1)
Tmn=Summary[,2]
Tmn=ts(Tmn, start = 1951, frequency = 1)
Tmx=Summary[,3]
Tmx=ts(Tmx, start = 1951, frequency = 1)
Td=Summary[,4]
Td=ts(Td, start = 1951, frequency = 1)


























cam=function(x, st){
  v=cumsum(x)/seq_along(x)
  v=ts(v, start = st, frequency = 1)
  d=x-v
  plot.ts(v, type = "l", lty = 1, pch = 1,lwd=2,col="blue", xlab = "Year",ylab = "CAM Values")
  abline(h=mean(v), col="red", lty=2)
  return(v)
}
d=cam(T,1951)
camT=as.data.frame(d)
difT=T-d

dmn=cam(Tmn,1951)
camTmin=as.data.frame(dmn)
difTmin=Tmn-dmn

dmx=cam(Tmx,1951)
camTmax=as.data.frame(dmx)
difTmax=Tmx-dmx

dd=cam(Td,1951)
camTdtr=as.data.frame(dd)
difTdtr=Td-dd
data=cbind(camT$x,difT,camTmin$x,difTmin,camTmax$x,difTmax,camTdtr$x,difTdtr)
setwd("D:/Dr. Atiqur Rahman")
data= as.data.frame(data)
writexl::write_xlsx(data, "data_file.xlsx")

par(mfrow=c(2,2))
plot.ts(d, type = "l", lty = 1, pch = 1,lwd=2,col="blue", xlab = "Year",ylab = "Mean Temperature(°C)")
abline(h=mean(d), col="red", lty=2)
legend("top", legend = c("CAM","Avg CAM"),lty = c(1,2),lwd=c(2,1),col=c("blue","red"), cex = .7)
plot.ts(dmn, type = "l", lty = 1, pch = 1,lwd=2,col="blue", xlab = "Year",ylab = "Min Temperature(°C)")
abline(h=mean(dmn), col="red", lty=2)
legend("top", legend = c("CAM","Avg CAM"),lty = c(1,2),lwd=c(2,1),col=c("blue","red"), cex = .7)
plot.ts(dmx, type = "l", lty = 1, pch = 1,lwd=2,col="blue", xlab = "Year",ylab = "Max Temperature(°C)")
abline(h=mean(dmx), col="red", lty=2)
legend("top", legend = c("CAM","Avg CAM"),lty = c(1,2),lwd=c(2,1),col=c("blue","red"), cex = .7)
plot.ts(dd, type = "l", lty = 1, pch = 1,lwd=2,col="blue", xlab = "Year",ylab = "DDR(°C)")
abline(h=mean(dd), col="red", lty=2)
legend("top", legend = c("CAM","Avg CAM"),lty = c(1,2),lwd=c(2,1),col=c("blue","red"), cex = .7)


par(mfrow=c(2,2))
plot.ts(dif, type = "l", lty = 1, pch = 1,lwd=2, xlab = "Year",ylab = "Mean Temperature(°C)")
legend("topleft", legend = c("Difference"),lty = 1, cex = 1)
plot.ts(difmn, type = "l", lty = 1, pch = 1,lwd=2, xlab = "Year",ylab = "Min Temperature(°C)")
legend("topleft", legend = c("Difference"),lty = 1, cex = 1)
plot.ts(difmx, type = "l", lty = 1, pch = 1,lwd=2, xlab = "Year",ylab = "Max Temperature(°C)")
legend("topleft", legend = c("Difference"),lty = 1, cex = 1)
plot.ts(difd, type = "l", lty = 1, pch = 1,lwd=2, xlab = "Year",ylab = "DDR(°C)")
legend("topleft", legend = c("Difference"),lty = 1, cex = 1)

