library(shiny)
library(rinat)
library(dplyr)
library(htmlwidgets)
library(leaflet.extras)

server <- function(input, output) {
  
  obs_data <- reactive(
    if(input$query_type == "username"){
    rinat::get_inat_obs_user(username = input$username_query, maxresults = input$num_obs) %>% 
      dplyr::filter(!is.na(latitude)) %>% 
      dplyr::filter(quality_grade == "research")
    } else {
      rinat::get_inat_obs(taxon_name = input$latin_query, maxresults = input$num_obs, quality = "research") %>% 
        filter(!is.na(latitude))
    }
  )
  
  heatmap <- reactive({
    obs_data <- obs_data()
    leaflet(data = obs_data()) %>%
      addProviderTiles("CartoDB.Positron") %>% 
      addCircles(~longitude, ~latitude, popup=paste(obs_data$observed_on, "|", obs_data$scientific_name, "|", paste0("<a target='", "_blank' ", "href='", obs_data$url,"'>", "observation","</a>")), weight = 1, radius = 3, color = "black", stroke = TRUE, fillOpacity = 0.6) %>% 
      addHeatmap(lng = ~longitude, lat = ~latitude, radius = 8, gradient = NULL) %>% 
      addFullscreenControl
  })
  
  output$map <- renderLeaflet({
    heatmap()      
  })

  output$header <- renderTable({ 
    obs_data()
  })
  
  output$choose_query <- renderUI({
    radioButtons("query_type", "Filter by",
                 c("User" = "username",
                   "Latin name" = "latin")
                 )
  })
  
  output$type_query <- renderUI({
    if (is.null(input$query_type))
      return()
    switch(input$query_type,
           "username" = textInput("username_query", label = "", placeholder = "Enter username"),
           "latin" = textInput("latin_query", label = "", placeholder = "Enter latin name")
           )
    })
  
  # download  
  output$download_map<- downloadHandler(
    filename = function() {
      paste("final_map_", input$inat_query, ".html", sep="")
     },
    content = function(file) {
      saveWidget(heatmap(), file = file, selfcontained = TRUE)
    }
  )
  
}

# data <- get_inat_obs(taxon_name = "Cannabis sativa", maxresults = 3000000, quality = "research") %>% filter(!is.na(latitude))