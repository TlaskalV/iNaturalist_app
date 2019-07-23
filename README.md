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

## Packages reference

These packages enabled iNaturalist app to work properly:

-   base (R Core Team 2019)
-   dplyr (Wickham et al. 2019)
-   fontawesome (Iannone 2019)
-   htmlwidgets (Vaidyanathan et al. 2018)
-   leaflet (Cheng, Karambelkar, and Xie 2018)
-   leaflet.extras (Karambelkar and Schloerke 2018)
-   openxlsx (Walker 2019)
-   rinat (Barve and Hart 2017)
-   shiny (Chang et al. 2019)
-   shinythemes (Chang 2018)

Barve, Vijay, and Edmund Hart. 2017. *Rinat: Access iNaturalist Data
Through Apis*.

Chang, Winston. 2018. *Shinythemes: Themes for Shiny*.
<https://CRAN.R-project.org/package=shinythemes>.

Chang, Winston, Joe Cheng, JJ Allaire, Yihui Xie, and Jonathan
McPherson. 2019. *Shiny: Web Application Framework for R*.
<https://CRAN.R-project.org/package=shiny>.

Cheng, Joe, Bhaskar Karambelkar, and Yihui Xie. 2018. *Leaflet: Create
Interactive Web Maps with the Javascript ’Leaflet’ Library*.
<https://CRAN.R-project.org/package=leaflet>.

Iannone, Richard. 2019. *Fontawesome: Easily Insert Fontawesome Icons
into Documents*.

Karambelkar, Bhaskar, and Barret Schloerke. 2018. *Leaflet.extras: Extra
Functionality for ’Leaflet’ Package*.
<https://CRAN.R-project.org/package=leaflet.extras>.

R Core Team. 2019. *R: A Language and Environment for Statistical
Computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

Vaidyanathan, Ramnath, Yihui Xie, JJ Allaire, Joe Cheng, and Kenton
Russell. 2018. *Htmlwidgets: HTML Widgets for R*.
<https://CRAN.R-project.org/package=htmlwidgets>.

Walker, Alexander. 2019. *Openxlsx: Read, Write and Edit Xlsx Files*.
<https://CRAN.R-project.org/package=openxlsx>.

Wickham, Hadley, Romain François, Lionel Henry, and Kirill Müller. 2019.
*Dplyr: A Grammar of Data Manipulation*.
<https://CRAN.R-project.org/package=dplyr>.