# iNaturalist observation data visualization
App for creating observation heatmap from [iNaturalist](https://www.inaturalist.org/) with use of [rinat package](https://github.com/ropensci/rinat).

1. Filter **research grade** observations by scientific name of organism or by observing user.

2. Download either zoomable and interactive **html file** or source **data table**.

[Source code](https://github.com/Vojczech/iNaturalist_app)

## How to try app locally

Start your local installation of **R** language and paste following code which automatically downloads prerequisties and starts app:


```
install.packages(c("shiny", "shinythemes", "leaflet", "dplyr", "rinat", "devtools", "htmlwidgets", "openxlsx"))
devtools::install_github("rstudio/fontawesome")
library(shiny)
runGitHub("iNaturalist_app", "Vojczech") 
```
