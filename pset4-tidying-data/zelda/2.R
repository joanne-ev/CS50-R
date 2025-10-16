load("zelda.RData")


zelda <- zelda |>
  # Summarizing the number of releases in each year
  group_by(year) |>
  summarise(title = n()) |>
  # Sort the rows by the number of releases in a given year, most to least
  arrange(desc(title)) |>
  # Rename title column to be releases
  rename(releases = title)

save(zelda, file = "2.RData")
