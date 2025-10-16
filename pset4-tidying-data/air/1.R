library(tidyverse)

air_df <- read_csv("air.csv")

# Select relevant columns
air <- air_df[c("State", "State-County", "POLLUTANT", "Emissions (Tons)", "SCC LEVEL 1", "SCC LEVEL 2", "SCC LEVEL 3", "SCC LEVEL 4")]

# Rename columns
renamed_columns <- c("state", "county", "pollutant", "emissions", "level_1", "level_2", "level_3", "level_4")
colnames(air) <- renamed_columns

# Save the new data
save(air, file = "air.RData")