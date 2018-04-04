#-------British National Grid to WGS84-----------------
bng_to_wgs84 <- function(datain, east="e", north="n"){
  library(rgdal) 
  head(datain)
  if (north!= "n" & east!= "e"){
  names(datain)[names(datain) == east] <- "e"
  names(datain)[names(datain) == north] <- "n"
  }
  head(datain)
  bng = datain
  coordinates(bng) = ~ e + n
  bng@proj4string = CRS("+init=epsg:27700") 
  latlon = spTransform(bng, CRS("+proj=longlat +datum=WGS84")) 
  out = cbind(datain, coordinates(latlon)) 
  colnames(out) = c(names(datain),'lon','lat') 
  return(out)
}

#-------WGS84 to British National Grid------------------

wgs_84_to_bng <- function(datain){
  library(rgdal) 
  bng = datain 
  coordinates(bng) = ~ lon + lat 
  bng@proj4string = CRS("+proj=longlat +datum=WGS84") 
  latlon = spTransform(bng, CRS("+init=epsg:27700")) 
  out = cbind(datain, coordinates(latlon)) 
  colnames(out) = c(names(datain),'e','n') 
  return(out)
}
