# data work

# load packeges ----
library(dplyr)
library(ggplot2)
library(readr)
library(jsonlite)
# data set 1 ----
## load data ----
# https://ourworldindata.org/grapher/proportion-using-safely-managed-drinking-water?tab=table
url <- "https://ourworldindata.org/grapher/proportion-using-safely-managed-drinking-water.csv?v=1&csvType=full&useColumnShortNames=true"
Water <- read.csv(url)

## modify data ----
continents <- c("WHO_AFR","WHO_AMR","WHO_EUR")
regins <- c("WHO_EMR","WHO_SEAR","WHO_WPAC","UNSDG_CSA","UNSDG_ESEA","UNSDG_ENA","UNSDG_LAC","UNSDG_NAWA","UNSDG_SSA")
classes <- c("High-income countries", "Upper middle-income countries", "Lower middle-income countries", "Low-income countries") 

Water <-
  Water %>% 
  filter(entity %in% regins )

  
## plot data ----
ggplot(Water,
       aes(x = year,
           y = wat_sm__residence_total,
           colour = entity)) +
  geom_line()


# dataset 2 ----
# https://ourworldindata.org/grapher/urban-vs-rural-safely-managed-drinking-water-source?time=2024
## load data ----
url <- "https://ourworldindata.org/grapher/urban-vs-rural-safely-managed-drinking-water-source.csv?v=1&csvType=full&useColumnShortNames=true"
UR <- read.csv(url)

## modify data ----


## plot data ----

# dataset 3 ----
# https://ourworldindata.org/water-use-stress
##
