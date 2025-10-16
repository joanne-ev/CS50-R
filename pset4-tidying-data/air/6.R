library(tidyverse)

load("air.RData")

air <- air |>
  # Summarise the data in the tibble to find the total emissions for each pollutant
  group_by(pollutant) |>
  summarise(emissions = sum(emissions)) |>
  # Sort the pollutants from highest to lowest emissions
  ungroup() |>
  arrange(desc(emissions))


# Save the new data
save(air, file = "6.RData")