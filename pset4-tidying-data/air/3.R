library(tidyverse)

load("air.RData")

# Find the distinct counties
air |>
  distinct(county) |>
  print(n=Inf)

# Only includes data for the county of your choice
county_choice <- "OR - Columbia"
air <- air |>
  subset(county == county_choice)

# Save the new data
save(air, file = "3.RData")