library(tidyverse)

load("air.RData")

# Sort by the emissions column, highest value to lowest
air <- air |>
  arrange(desc(emissions))

# Save the new data
save(air, file = "2.RData")