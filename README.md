# iNaturalist observation data visualization
<div float="right">
    <img align="right" src="/iNaturalist_logo.png?raw=true" width="100px"</img>
</div>

App for creating observation heatmap from [iNaturalist](https://www.inaturalist.org/) with use of [rinat package](https://github.com/ropensci/rinat).

1. Filter **research grade** observations by scientific name of organism or by observing user.

2. Download either zoomable and interactive **html file** or source **data table**.

<div float="right">
    <img align="right" src="/Gyps_map_readme.png?raw=true" width="400px"</img>
</div>

## Where to try the app

There are two options to access the app:
* [online web interface](https://labenvmicro.shinyapps.io/iNaturalist_app/) 
* or start your local installation of **R** language and paste following code which automatically downloads prerequisties and starts app:


```
install.packages(c("shiny", "shinythemes", "leaflet", "dplyr", "rinat", "devtools", "htmlwidgets", "openxlsx"))
devtools::install_github("rstudio/fontawesome")
library(shiny)
runGitHub("iNaturalist_app", "Vojczech") 
```
