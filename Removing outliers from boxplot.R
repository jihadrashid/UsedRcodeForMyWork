bstats <- boxplot(Humidity$Date~Humidity$ambagan, col = "lightgray") 
#need to "waste" this plot
bstats$out <- NULL
bstats$group <- NULL
bxp(bstats)