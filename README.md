# UsefulRScripts
This a repository of useful R Scripts that I use in my daily life

I will build up this repository with R scripts containing functions. You can then call these R scripts with _source()_ and then the function(s) will be available for you to use

<h1> Convert Between British National Grid and WGS84 </h1>

Required: rgdal package is needed

run the following in R will add two functions to your environment

bng_to_wgs84 and wgs_84_to_bng

_source("https://raw.githubusercontent.com/ihaveknowledge/UsefulRScripts/master/Convert%20between%20British%20National%20Grid%20and%20WGS84%20functions.R")_

Pass a dataframe as the argument to the function with columns named e + n for BNG and lon + lat for WGS84.

For example wgs_84_to_bng(df) will take a dataframe with lon + lat columns and return a dataframe with additional e + n columns in British National Grid 27700.
