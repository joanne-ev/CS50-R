load("zelda.RData")


# Find titles with more than 1 producer
rows <- c()

for (i in 1:nrow(zelda)) {

  row <- zelda[i, 'producers'] |> str_split(",")

  num_producers <- length(row[[1]])

  if (num_producers > 1) {
    rows <- c(rows, i)
  }

}

# Include only the first release(s) for each title with more than 1 producer
zelda <- zelda[rows, ] |>
  group_by(title) |>
  slice_min(year) |>
  # Sort the releases by year, from oldest to newest. If any two releases have the same year, sort them alphabetically by title, followed by system.
  arrange(year, title, system)

save(zelda, file = "5.RData")
