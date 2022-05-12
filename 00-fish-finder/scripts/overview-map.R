#!/usr/bin/env Rscript

library(here)
library(sf)
library(tidyverse)

## Read Shape files for Great Britain, Isle of Man and Ireland

gbr <- st_read(here("00-fish-finder/data/external/british-isles/GBR_adm0.shp"))
imn <- st_read(here("00-fish-finder/data/external/british-isles/IMN_adm0.shp"))
irl <- st_read(here("00-fish-finder/data/external/british-isles/IRL_adm0.shp"))

## Marine protected areas and maritime boundaries

mpa <- st_read(here("00-fish-finder/data/external/c20201214-OffshoreMPAs-WGS84/c20201214_OffshoreMPAs_WGS84.shp"))
bounds <- st_read(here("00-fish-finder/data/external/UK_Hydrographic_Office_Maritime_Limits_and_Boundaries/Limits_and_boundaries.shp"))

## Infrastructure

df <- read_csv(here("00-fish-finder/data/interim/wind-farms.csv"))
df2 <- read_csv(here("00-fish-finder/data/interim/platforms.csv"))

df <- bind_rows(df, df2)

ggplot(df) +
    geom_sf(data = gbr, color = "black", fill = "gray") +
    geom_sf(data = imn, color = "black", fill = "gray") +
    geom_sf(data = irl, color = "black", fill = "gray") +
    geom_sf(data = mpa, color = "red") +
    geom_sf(data = bounds, color = "green") +
    geom_point(aes(x = longitude, y = latitude)) +
    ggtitle("Data set overview") +
    coord_sf() +
    xlim(-14,6) +
    ylim(48,64) +
    labs(x = "Longitude", y = "Latitude")

ggsave(here("00-fish-finder/figures/map.png"))
