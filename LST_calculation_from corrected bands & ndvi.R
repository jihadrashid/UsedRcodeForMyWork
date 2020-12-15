#loading packages
library(raster)

#importing data
lst=raster('D:/lst.tif')

#logical raster values to numerical
readAll(lst)
#plotting raster data
plot(density(lst@data@values, adjust = 2))
