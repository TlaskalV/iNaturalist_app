library(shiny)
library(rinat)
library(dplyr)
library(htmlwidgets)
library(leaflet.extras)

server <- function(input, output) {
  
  obs_data <- reactive(
    rinat::get_inat_obs_user(username = input$inat_query, maxresults = 30) %>% 
      dplyr::filter(!is.na(latitude)) %>% 
      dplyr::filter(quality_grade == "research")
  )
  
  
  output$map <- renderLeaflet({
    obs_data <- obs_data()
    leaflet(data = obs_data()) %>%
      addProviderTiles("CartoDB.Positron") %>% 
      addCircles(~longitude, ~latitude, popup=paste(obs_data$observed_on, "|", obs_data$scientific_name, "|", paste0("<a target='", "_blank' ", "href='", obs_data$url,"'>", "observation","</a>")), weight = 1, radius = 3, color = "black", stroke = TRUE, fillOpacity = 0.6) %>% 
      addHeatmap(lng = ~longitude, lat = ~latitude, radius = 8, gradient = NULL) %>% 
      addFullscreenControl
  })

  output$header <- renderTable({ 
    obs_data()
  })
  
}

# data <- get_inat_obs(taxon_name = "Cannabis sativa", maxresults = 3000000, quality = "research") %>% filter(!is.na(latitude))