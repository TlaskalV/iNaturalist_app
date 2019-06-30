library(shiny)
library(rinat)
library(dplyr)
library(htmlwidgets)

server <- function(input, output) {
  
  obs_data <- reactive(
    get_inat_obs_user(username = input$inat_query, maxresults = 30) %>% 
      filter(!is.na(latitude)) %>% 
      filter(quality_grade == "research")
  )
  
  
  output$map <- renderLeaflet({
    leaflet(data = obs_data()) %>%
      addProviderTiles("CartoDB.Positron", options = tileOptions(minZoom = 7, maxZoom = 13)) %>%
      addFullscreenControl
  })
  
  observe({
    withProgress(message = 'Plotting heatmap',
                 detail = 'This may take a while...',
                 value = 0, {
                   for (i in 1:15) {
                     incProgress(1/15)
                   }
  leafletProxy("map", data = obs_data()) %>%
    addHeatmap(lng = ~longitude, lat = ~latitude, radius = 8, gradient = NULL)
                 })
  })
    
    
}

# data <- get_inat_obs(taxon_name = "Cannabis sativa", maxresults = 3000000, quality = "research") %>% filter(!is.na(latitude))