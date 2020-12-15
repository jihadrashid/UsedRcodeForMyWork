setwd('C:/Users/JihadRashid/Desktop')
library(ggplot2)
library(xts)
library(imputeTS)
library(ggpubr)


C1 = xts(precicluster1$mmhr, as.Date(precicluster1$Time, "%Y-%m-%d"))
C2 = xts(precicluster2$mmhr, as.Date(precicluster2$Time, "%Y-%m-%d"))
C3 = xts(precicluster3$mmhr, as.Date(precicluster3$Time, "%Y-%m-%d"))
C4 = xts(precicluster4$mmhr, as.Date(precicluster4$Time, "%Y-%m-%d"))

C1_ts= as.data.frame(na.interpolation(C1, option = "spline"))
C2_ts= as.data.frame(na.interpolation(C2, option = "spline"))
C3_ts= as.data.frame(na.interpolation(C3, option = "spline"))
C4_ts= as.data.frame(na.interpolation(C4, option = "spline"))


data=cbind.data.frame(precicluster1$Time,C1_ts$V1,C2_ts$V1,C3_ts$V1,C4_ts$V1)
colnames(data)=c('Time','C1','C2','C3','C4')

bstats=boxplot(data,col = 'lightgray')
bstats$out <- NULL
bstats$group <- NULL
bxp(bstats)
par(mfrow=c(2,2))
plot(old_ts)

windowsFonts(Times=windowsFont("Times New Roman"))


ggplot(finaldata, aes(date, c4))+
  geom_line()+
  geom_smooth(method = "lm")+
  stat_cor(label.y = 0.65) +
  stat_regline_equation(label.y = 0.6)+
  ggtitle('(C1)')+ylab(" ")+xlab(" ")+
  theme(text=element_text(family="Times", face="plain", size=12))+
  theme_classic()
p2=ggplot(data, aes(Time, C2))+ylim(-0.1,2.5)+
  geom_line()+geom_smooth(method = "lm")+
  stat_cor(label.y = 2.5) +
  stat_regline_equation(label.y = 2.3)+
  ggtitle('(C2)')+ylab(" ")+xlab(" ")+
  theme(text=element_text(family="Times", face="plain", size=12))+
  theme_classic()
p3=ggplot(data, aes(Time, C3))+ylim(-0.1,2.5)+
  geom_line()+geom_smooth(method = "lm")+
  stat_cor(label.y = 2.5) +
  stat_regline_equation(label.y = 2.3)+
  ggtitle('(C3)')+ylab(" ")+xlab(" ")+
  theme(text=element_text(family="Times", face="plain", size=12))+
  theme_classic()
p4=ggplot(data, aes(Time, C4))+ylim(-0.1,2.5)+
  geom_line()+geom_smooth(method = "lm")+
  stat_cor(label.y = 2.5) +
  stat_regline_equation(label.y = 2.3)+
  ggtitle('(C4)')+ylab(" ")+xlab(" ")+
  theme(text=element_text(family="Times", face="plain", size=12))+
  theme_classic()

a=ggarrange(p1,p2,p3,p4,ncol=2,nrow=2)
annotate_figure(a,
                left = text_grob("Precipitation (mm/hr)",rot=90),
                bottom = text_grob("Time"))

library(pdftools)
bitmap <- pdf_render_page("D:/SIR/Refugee/Graph/Rplot02.pdf", page = 1, dpi = 400)
jpeg::writeJPEG(bitmap, "D:/SIR/Refugee/Graph/Prec.jpeg")
