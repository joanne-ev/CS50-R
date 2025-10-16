load("zelda.RData")

# Includes only the original releases for all titles on which Shigeru Miyamoto was a producer
zelda <- zelda |>
  filter(grepl('Shigeru Miyamoto', producers)) |>
  group_by(title) |>
  slice_min(year) |>
  # Sort the releases by year, from oldest to newest. If any two releases have the same year, sort them alphabetically by title, followed by system
  arrange(year, title, system)


save(zelda, file = "4.RData")
