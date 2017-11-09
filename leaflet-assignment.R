library(leaflet)

wineryCoordinates <- read.csv(file="./yountville_winery_coords.csv", header = TRUE, sep = ",")

wineryYelpSites <- scan(file="./yountville_winery_links.csv", what = character(), sep = "\n")

wineryIcon <- makeIcon(
  iconUrl = "http://robertctuck.com/leaflet-project/wine_glass.png",
  iconWidth = 31*215/230, iconHeight = 31,
  iconAnchorX = 31*215/230/2, iconAnchorY = 16
)

wineryCoordinates %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = wineryIcon, popup = wineryYelpSites)

