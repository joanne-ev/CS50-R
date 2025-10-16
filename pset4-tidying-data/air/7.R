library(tidyverse)

load("air.RData")

air <- air |>
  # Find the total emissions of each pollutant from each of the level_1 source categories.
  group_by(level_1, pollutant) |>
  summarise(emissions = sum(emissions)) |>
  # Sort the rows first alphabetically by source name, then alphabetically by pollutant name.
  ungroup() |>
  arrange(level_1, pollutant) |>
  rename(source = level_1)


# Save the new data
save(air, file = "7.RData")