Librairie weatherData
========================================================

[source](http://cran.r-project.org/web/packages/weatherData/weatherData.pdf)

initialisation:

```r
library("weatherData")
```
Utilise:
- le code s'une station météo sous la forme d'un sigle aéroportuaire: Strasbourg = LFST
- la date du jour

Afficher la météo du jour
-------------------------

La méthode __getDetailedWeather__ donne les infos le jour donné sous forme d'un dataframe.

- __opt_all_columns = TRUE__ affiche toutes les infos disponibles par heure. Par défaut (FALSE) n'affiche que les températures.
- __opt_custom_columns__ permet un choix personalisé des colonnes à afficher. Par défaut vaut FALSE. Si on met TRUE, il faut obligatoirement renseigner l'option _custom_columns-.
- __custom_columns__ vecteur d'INTEGER inqiquant le n° de la colonne à afficher. La première colonne (_Time_) est toujours affichée. Il est donc inutile de le péciser. La numérotation effective commence à 2. Par exemple or afficher la température et la pression: names(getDetailedWeather("LFST", "2014-06-10", opt_custom_columns=TRUE, custom_columns=c(2,5) ))



```r
today <- ("2014-06-10")
station <- "LFST"
t <- getDetailedWeather(station, today, opt_all_columns = TRUE)
names(t)
```

```
##  [1] "Time"                  "TimeCEST"             
##  [3] "TemperatureC"          "Dew_PointC"           
##  [5] "Humidity"              "Sea_Level_PressurehPa"
##  [7] "VisibilityKm"          "Wind_Direction"       
##  [9] "Wind_SpeedKm_h"        "Gust_SpeedKm_h"       
## [11] "Precipitationmm"       "Events"               
## [13] "Conditions"            "WindDirDegrees"       
## [15] "DateUTC"
```

```r
str(t)
```

```
## 'data.frame':	71 obs. of  15 variables:
##  $ Time                 : POSIXct, format: "2014-06-10 00:00:00" "2014-06-10 00:00:00" ...
##  $ TimeCEST             : chr  "12:00 AM" "12:00 AM" "12:30 AM" "1:00 AM" ...
##  $ TemperatureC         : num  29 29 29 27 27 27 25 25 25 24 ...
##  $ Dew_PointC           : num  10 10 8 9 9 9 9 9 9 10 ...
##  $ Humidity             : int  20 30 27 21 32 32 26 36 36 32 ...
##  $ Sea_Level_PressurehPa: int  1016 1016 1016 1016 1016 1016 1015 1015 1015 1015 ...
##  $ VisibilityKm         : num  18 10 10 60 10 10 60 10 10 60 ...
##  $ Wind_Direction       : chr  "South" "South" "South" "South" ...
##  $ Wind_SpeedKm_h       : num  18.5 18.5 14.8 13 13 9.3 7.4 7.4 7.4 5.6 ...
##  $ Gust_SpeedKm_h       : chr  "" "-" "-" "" ...
##  $ Precipitationmm      : chr  "" "N/A" "N/A" "" ...
##  $ Events               : chr  "" "" "" "" ...
##  $ Conditions           : chr  "Clear" "Unknown" "Unknown" "Clear" ...
##  $ WindDirDegrees       : int  180 180 180 180 180 170 180 180 230 250 ...
##  $ DateUTC              : chr  "2014-06-09 22:00:00" "2014-06-09 22:00:00" "2014-06-09 22:30:00" "2014-06-09 23:00:00" ...
```

```r
head(t)
```

```
##                  Time TimeCEST TemperatureC Dew_PointC Humidity
## 1 2014-06-10 00:00:00 12:00 AM           29         10       20
## 2 2014-06-10 00:00:00 12:00 AM           29         10       30
## 3 2014-06-10 00:30:00 12:30 AM           29          8       27
## 4 2014-06-10 01:00:00  1:00 AM           27          9       21
## 5 2014-06-10 01:00:00  1:00 AM           27          9       32
## 6 2014-06-10 01:30:00  1:30 AM           27          9       32
##   Sea_Level_PressurehPa VisibilityKm Wind_Direction Wind_SpeedKm_h
## 1                  1016           18          South           18.5
## 2                  1016           10          South           18.5
## 3                  1016           10          South           14.8
## 4                  1016           60          South           13.0
## 5                  1016           10          South           13.0
## 6                  1016           10          South            9.3
##   Gust_SpeedKm_h Precipitationmm Events Conditions WindDirDegrees
## 1                                            Clear            180
## 2              -             N/A           Unknown            180
## 3              -             N/A           Unknown            180
## 4                                            Clear            180
## 5              -             N/A           Unknown            180
## 6              -             N/A           Unknown            170
##               DateUTC
## 1 2014-06-09 22:00:00
## 2 2014-06-09 22:00:00
## 3 2014-06-09 22:30:00
## 4 2014-06-09 23:00:00
## 5 2014-06-09 23:00:00
## 6 2014-06-09 23:30:00
```
```{}
##  [1] "Time"                  "TimeCEST"             
##  [3] "TemperatureC"          "Dew_PointC"           
##  [5] "Humidity"              "Sea_Level_PressurehPa"
##  [7] "VisibilityKm"          "Wind_Direction"       
##  [9] "Wind_SpeedKm_h"        "Gust_SpeedKm_h"       
## [11] "Precipitationmm"       "Events"               
## [13] "Conditions"            "WindDirDegrees"       
## [15] "DateUTC"
```

