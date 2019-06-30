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
ui <- fluidPage(
    # Application title
    tabPanel("Map",
             div(class = "outer",
                 leafletOutput("map", width = "100%", height = "100%"), #
                 absolutePanel(id = "controls", class = "panel panel-default", 
                               fixed = TRUE,
                               draggable = TRUE, top = "10%", left = "auto", right = 20, bottom = "auto",
                               width = 330, height = "auto", cursor = "move",
                               br(),
                               p("Search and plot iNaturalist observations"),
                               textInput("inat_query", label = h3("iNat query"), value = "Enter latin name/username"),
                               br(),
                               p(a("Source code", href = "https://github.com/Vojczech", target = "_blank")),
                               p("Data sources:", a("iNaturalist", 
                                                    href = "https://www.inaturalist.org/", 
                                                    target = "_blank"), 
                                 a("rinat R package", 
                                   href = "https://github.com/ropensci/rinat", 
                                   target = "_blank"), 
                                 "by",
                                 a("rOpenSci", 
                                   href = "https://ropensci.org/", 
                                   target = "_blank")
                                 )
             )
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

