# iNaturalist observation data download
App for creating heatmaps of observations from [iNaturalist](https://www.inaturalist.org/).

Filter **research grade** observations by scientific name of organisms or by observing user.

Download either zoomable and interactive **html file** or source **data table**.

<div float="right">
    <img src="/Gyps_map_readme.png?raw=true" width="400px"</img> 
</div>

## Where to try app

There are two options to access the app:
* [lonline web app](https://labenvmicro.shinyapps.io/iNaturalist_app/) 
* or start your local installation of **R** language and paste following code which automatically downloads prerequisties and starts app:


```
install.packages(c("shiny", "shinythemes", "leaflet", "dplyr", "rinat", "devtools", "htmlwidgets", "openxlsx"))
devtools::install_github("rstudio/fontawesome")
library(shiny)
runGitHub("iNaturalist_app", "Vojczech") 
```
