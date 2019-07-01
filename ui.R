#
# 
# 
#
# 
#
# 
#

library(shiny)
library(shinythemes)
library(leaflet)
library(fontawesome)

# Define UI for application that draws a histogram
navbarPage("iNaturalist heatmap",
           theme = shinytheme("journal"),
    tabPanel("Map",
             div(class = "outer",
                 leafletOutput(outputId = "map"),
                 absolutePanel(id = "controls", class = "panel panel-default", 
                               fixed = TRUE,
                               draggable = TRUE, top = "10%", left = "auto", right = "1%", bottom = "auto",
                               width = 300, height = "auto", cursor = "move", style = "opacity: 0.80; padding: 5px;", 
                               br(),
                               p("Search and plot iNaturalist observations"),
                               textInput("inat_query", label = "", placeholder = "Enter latin name/username"),
                               p(a(list(icon("github"), "Source code"), href = "https://github.com/Vojczech/", target="_blank")),
                               p("Data sources:", a("iNaturalist", 
                                                    href = "https://www.inaturalist.org/", 
                                                    target = "_blank"),
                                 "accessed through", 
                                 a("rinat package", 
                                   href = "https://github.com/ropensci/rinat", 
                                   target = "_blank"), 
                                 "by",
                                 a("rOpenSci", 
                                   href = "https://ropensci.org/", 
                                   target = "_blank")
                                 )
             ),
             br(),
             tableOutput("header")
             )
    ),
    
    tabPanel("About",
             fluidRow(
                 column(12,
                        wellPanel(
                            includeMarkdown("about.md"))
                 )
             )
    )
)

