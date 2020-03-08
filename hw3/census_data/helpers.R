library(sf)
library(ggplot2)
library(wesanderson)
percent_map <- function(var, color, legend.title, min = 0, max = 100) {
  
(confirmed <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.csv"))
(recovered <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.csv"))
(death <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Deaths.csv"))
  
  us_map <- ggplot(data = us_states,
                   mapping = aes(x = long, y = lat,
                                 group = group))
  us_map + geom_polygon(fill = "white", color = "black")
  
  #chn_map %>%
    #ggplot() + 
    #geom_sf(mapping = aes(geometry = geometry), color = "black", fill = "white") + 
   ##geom_sf_label(mapping = aes(label = NAME)) + 
    #theme_bw() # better for maps 
  
  confirmed_long <- confirmed %>%
    pivot_longer(-(`Province/State`:Long), 
                 names_to = "Date", 
                 values_to = "confirmed") %>%
    mutate(Date = (ymd(Date))) 
  confirmed_long
  
  recovered_long <- recovered %>%
    pivot_longer(-(`Province/State`:Long), 
                 names_to = "Date", 
                 values_to = "recovered") %>%
    mutate(Date = mdy(Date))
  recovered_long
  
  
  death_long <- death %>%
    pivot_longer(-(`Province/State`:Long), 
                 names_to = "Date", 
                 values_to = "death") %>%
    mutate(Date = mdy(Date))
  death_long
  


  # plot choropleth map
  #map("county", fill = TRUE, col = fills, 
      #resolution = 0, lty = 0, projection = "polyconic", 
      #myborder = 0, mar = c(0,0,0,0))
  
  # overlay state borders
 # map("state", col = "white", fill = FALSE, add = TRUE,
     # lty = 1, lwd = 1, projection = "polyconic", 
     # myborder = 0, mar = c(0,0,0,0))
  
  # add a legend
  #inc <- (max - min) / 4
  #legend.text <- c(paste0(min, " % or less"),
                  # paste0(min + inc, " %"),
                  # paste0(min + 2 * inc, " %"),
                  # paste0(min + 3 * inc, " %"),
                   #paste0(max, " % or more"))
  
  #legend("bottomleft", 
        # legend = legend.text, 
         #fill = shades[c(1, 25, 50, 75, 100)], 
         #title = legend.title)
}

