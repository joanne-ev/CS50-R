library(tidyverse)

load("air.RData")

county_choice <- "OR - Columbia"

air <- air |>
  # Only includes data for the county of your choice
  subset(county == county_choice) |>
  # Sorts the data by the emissions column, highest value to lowest
  arrange(desc(emissions))

# Save the new data
save(air, file = "4.RData")