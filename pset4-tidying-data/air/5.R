library(tidyverse)

load("air.RData")

# Includes the single row with the highest value in the emissions column for each county
air <- air |>
  group_by(county) |>
  slice_max(order_by = emissions)

# Save the new data
save(air, file = "5.RData")