RWeather
========

Analyse des donnÃ©es mÃ©tÃ©o avec R

Autres sources
==============


The Rain Project
----------------

An R-based Open Source Analysis of Publicly Available Rainfall Data
Rainfall data used by researchers in academia and industry does not always come in the same format. Data is often in atypical formats and in extremely large number of files and there is not always guidance on how to obtain, process and visualize the data. This project attempts to resolve this issue by serving as a hub for the processing of such publicly available rainfall data using R.

The goal of this project is to reformat rainfall data from their native format to a consistent format, suitable for use in data analysis. Within this project site, each dataset is intended to have its own wiki. Eventually, an R package would be developed for each data source.

Currently R code is available to process data from three sources - Climate Prediction Center (global coverage), US Historical Climatology Network (USA coverage) and APHRODITE (Asia/Eurasia and Middle East).

[The project home page is here](http://rationshop.github.io/rain_r/)

Stations météo dans le monde
-----------------------------------------

- source: http://weather.noaa.gov/data/nsd_cccc.txt
- enregistré dans le dossier __Doc__ le 14/8/2015

Keyed by Location Indicator
Last Updated
All stations that have a location indicator assigned by The ICAO are available in this file. The ASCII file contains The following fields in The order specified, delimited by semicolons. Fields that are empty will be coded as no characters (adjacent delimiters) except where otherwise noted.

ICAO Location
indicator 	4 alphanumeric characters.
Block Number 	2 digits representing The WMO-assigned block. Not all stations in The file have an assigned block number. The value "--" is used for station without an assigned number.
Station Number 	3 digits representing The WMO-assigned station. Not all stations in The file have an assigned station number. The value "---" is used for station without an assigned number.
Place Name 	Common name of station location.
State 	2 character abbreviation (included for stations located in The United States only).
Country Name 	Country name is ISO short English form.
WMO Region 	Digits 1 through 6 representing The corresponding WMO region, 7 stands for The WMO Antarctic region.
Station Latitude 	DD-MM-SSH where DD is degrees, MM is minutes, SS is seconds and H is N for northern hemisphere or S for southern hemisphere. The seconds value is omitted for those stations where The seconds value is unknown.
Station Longitude 	DDD-MM-SSH where DDD is degrees, MM is minutes, SS is seconds and H is E for eastern hemisphere or W for western hemisphere. The seconds value is omitted for those stations where The seconds value is unknown.
Upper Air Latitude 	DD-MM-SSH where DD is degrees, MM is minutes, SS is seconds and H is N for northern hemisphere or S for southern hemisphere. The seconds value is omitted for those stations where The seconds value is unknown.
Upper Air Longitude 	DDD-MM-SSH where DDD is degrees, MM is minutes, SS is seconds and H is E for eastern hemisphere or W for western hemisphere. The seconds value is omitted for those stations where The seconds value is unknown.
Station Elevation (Ha) 	The station elevation in meters. Value is omitted if unknown.
Upper Air Elevation (Hp) 	The upper air elevation in meters. Value is omitted if unknown.
RBSN indicator 	P if station is defined by The WMO as belonging to The Regional Basic Synoptic Network, omitted otherwise.

Download The Station Infor