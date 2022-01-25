#!/usr/bin/env Rscript

library(here)
library(tidyverse)

## The UKHO infrastructure data set is large and imposes fairly
## onerous licensing conditions on Cefas. We therefore take an extract
## and reduce precision for the purposes of this student
## exercise. These data must be destroyed at the end of the summer
## school.

df <- read_csv(here("00-fish-finder/data/external/offshore-infrastructure/Wind Farms/Wind_Farm_Surface_Structures_UK_EEZ.csv"))

df <- select(df, Latitude, Longitude, fldnam)

df <-rename(df, latitude = Latitude, longitude = Longitude, name = fldnam)

df$latitude <- round(df$latitude, digits =3)
df$longitude <- round(df$longitude, digits =3)

write_csv(df, here("00-fish-finder/data/interim/wind-farms.csv"))

##

df <- read_csv(here("00-fish-finder/data/external/ukho/Platforms UK EEZ.csv"))

df <- select(df, Lat, Long, featid)

df <-rename(df, latitude = Lat, longitude = Long, name = featid)

df$latitude <- round(df$latitude, digits =3)
df$longitude <- round(df$longitude, digits =3)

write_csv(df, here("00-fish-finder/data/interim/platforms.csv"))
