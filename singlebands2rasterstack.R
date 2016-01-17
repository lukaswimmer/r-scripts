install.packages("rgdal")
install.packages("raster")
library(rgdal)
library(raster)

setwd("/Users/lukaswimmer/Desktop/Wagner_Projekt/02-1973/LM12400771973054FAK03/")

# stacks (!same extend / resolution!) some rasters to one single vector
scene1 <- stack(c("LM12400771973054FAK03_B4.TIF",    # Band 1
                  "LM12400771973054FAK03_B5.TIF",    # Band 2
                  "LM12400771973054FAK03_B6.TIF",    # Band 3
                  "LM12400771973054FAK03_B7.TIF"))   # Band 4

 writeRaster(scene1, filename="2-73_240-77.tif", overwrite=TRUE)