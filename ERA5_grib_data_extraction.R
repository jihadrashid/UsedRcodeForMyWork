library(rNOMADS)
library(ra/ster)
x=raster("D:/Downloads/cape.grib")
grib=brick("D:/Downloads/cape.grib")
shp=shapefile("D:/Downloads/shp.shp")
shp=spTransform(shp, CRSobj = "+proj=longlat +a=6367470 +b=6367470 +no_defs")
grib=crop(grib,shp)
grib_array= as.array(grib)

pointCoordinates=read.csv("D:/Downloads/station.csv")
coordinates(pointCoordinates)= ~ LONG+ LAT
cape=extract(grib, pointCoordinates)
combinePointValue=cbind(pointCoordinates,cape)
write.table(combinePointValue,file="D:/Downloads/combinedPointValue.csv", append=FALSE, 
            sep= ",", row.names = FALSE, col.names=TRUE)
data=data.frame(combinedPointValue)
View(data)
cape_ts=t.data.frame(data)
View(cape_ts)
cape_ts=cape_ts[c(1:493), ]
cape_ts=as.data.frame(cape_ts)
writexl::write_xlsx(cape_ts, "D:/Downloads/cape_data.xlsx")
