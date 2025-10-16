library(tidyverse)

# Read data
zelda <- read_csv("zelda.csv")

# Establish empty vectors to store data
years <- c()
systems <- c()

# Separate contents within a cell
for (row in 1:nrow(zelda)) {
  # Separate data within a cell
  release <- zelda[row, 'release'] |>
    str_split(" - ")

  # Append data to respective vector
  years <- c(years, release[[1]][1])
  systems <- c(systems, release[[1]][2])

}

# Create new columns
zelda['year'] <- years
zelda ['system'] <- systems

# Change roles column to be lower cased
for (i in 1:nrow(zelda)) {
  zelda[i, 'role'] <- tolower(zelda[i, 'role'])
}

# Remove unnecessary column
zelda <- zelda |> select(-release)


# Pivot wider
zelda <- zelda |>
  group_by(year, system) |>
  pivot_wider(
    names_from = 'role',
    values_from = 'names'
)

# Save new file
save(zelda, file = "zelda.RData")