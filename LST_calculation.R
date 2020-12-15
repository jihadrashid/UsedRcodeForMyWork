library(raster)
library(RStoolbox)

#set a temporary data directory for large graphical objec
rasterOptions(tmpdir = "D:/tempo")
#! You must have a large free space on your hard disk
#because we will get several large raster objects
metaData8 = readMeta("D:/Mumu/LT05_L1TP_136045_19890113/LT05_L1TP_136045_19890113_20170204_01_T1_MTL.txt")
shp = shapefile('D:/Refugee/Shapefiles/ccc.shp')
shp = spTransform(shp,CRSobj = '+proj=utm +zone=46 +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0 ')

lsat8 = stackMeta(metaData8)
w4n = mask(crop(w4n,shp),shp)
plotRGB(lsat8,r=4,g=3,b=2)

hazeDN = estimateHaze(lsat8, hazeBands = 1:4,
                         darkProp = 0.01)

lsat8_c = radCor(lsat8, metaData = metaData8,
                     hazeValues = hazeDN,
                     hazeBands = 1:4,
                     method = "costz")
lsat8.ndvi = spectralIndices(lsat8_c, red = "B3_sre", nir = "B4_sre", indices = "NDVI")


pv = ((lsat8.ndvi-lsat8.ndvi@data@min)/(lsat8.ndvi@data@max-lsat8.ndvi@data@min))^2
e = 0.986+0.004*pv
lsat8.LST10 = lsat8_sdos$B10_bt/(1 + 10.9 * (lsat8_sdos$B10_bt/14388) * log10(e))-273.15
lsat8.LST11 = lsat8_sdos$B11_bt/(1 + 12 * (lsat8_sdos$B11_bt/14388) * log10(e))-273.15
s17=(lsat8.LST10+lsat8.LST11)/2
