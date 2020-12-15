data=as.data.frame(Dhaka_21H_1col)
rain=as.data.frame(dhaka)
final_data=cbind.data.frame(data,rain)
View(final_data)

windowsFonts(A = windowsFont("Times New Roman"))
library(ggpubr)
library(devtools)
library(ggplot2)
ggscatter(final_data, x="...2", y="dhaka",col="blue",
          conf.int = TRUE,cor.coef = TRUE, 
          cor.method = "pearson",xlab = "Temperature °C", 
          ylab = "Rainfall")+
  geom_abline(col="black")

ggscatter(final_data, x="...2", y="dhaka",col="blue",
          xlab = "Temperature °C", 
          ylab = "Rainfall")+
  geom_smooth(method = "lm", se=FALSE,col="black", formula = y ~ x)+
  stat_regline_equation(formula = y ~ x,
                        position = "identity", na.rm = FALSE, show.legend = NA)
  

x =final_data$...2
y =final_data$dhaka
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x, y,
     xlab = "Temperature", ylab = "Rainfall",
     pch = 19, frame = FALSE)
# Add regression line
plot(x, y, col = "blue",
     xlab = "Temperature °C", ylab = "Rainfall",
     pch = 19, frame = FALSE)
abline(lm(y ~ x, data = mtcars), col = "black")
