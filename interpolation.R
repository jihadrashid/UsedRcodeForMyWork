library(sf)
library(ggplot2)
library(GISTools) 

aoi_boundary_HARV <- st_read("D:/Jerry/Rangraj.shp")
aoi_points <- st_read("D:/Jerry/Export_Output_4.shp")
st_geometry_type(aoi_boundary_HARV)
ggplot() + 
  geom_sf(data = aoi_boundary_HARV, size = 0.5, color = "black", fill = "beige") + 
  geom_sf(data = aoi_points)+
  ggtitle("AOI Boundary Plot") + 
  theme_bw() +
  coord_sf()
