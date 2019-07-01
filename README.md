# iNaturalist observation data download
App for creating heatmaps of observations from [iNaturalist](https://www.inaturalist.org/).

## Where to try app

Start your local installation of **R** language and paste following code which automatically downloads prerequisties and starts app:


```
install.packages(c("shiny", "shinythemes", "leaflet", "dplyr", "rinat", "devtools", "htmlwidgets", "openxlsx"))
devtools::install_github("rstudio/fontawesome")
library(shiny)
runGitHub("iNaturalist_app", "Vojczech") 
```