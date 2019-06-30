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

# Define UI for application that draws a histogram
navbarPage("iNaturalist heatmap",
           theme = shinytheme("journal"),
    tabPanel("Map",
             div(class = "outer",
                 leafletOutput(outputId = "map"),
                 absolutePanel(id = "controls", class = "panel panel-default", 
                               fixed = TRUE,
                               draggable = TRUE, top = "10%", left = "auto", right = 20, bottom = "auto",
                               width = 330, height = "auto", cursor = "move",
                               br(),
                               p("Search and plot iNaturalist observations"),
                               textInput("inat_query", label = h3("iNat query"), placeholder = "Enter latin name/username"),
                               br(),
                               p(a("Source code", href = "https://github.com/Vojczech", target = "_blank")),
                               p("Data sources:", a("iNaturalist", 
                                                    href = "https://www.inaturalist.org/", 
                                                    target = "_blank"),
                                 "accessed through", 
                                 a("rinat R package", 
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

