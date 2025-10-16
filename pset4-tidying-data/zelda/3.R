load("zelda.RData")


zelda <- zelda |>
  # Includes only the first release(s) for each Zelda title
  group_by(title) |>
  slice_min(order_by=year) |>
  # Sort the releases by year, from oldest to newest. If any two releases have the same year, sort them alphabetically by title, followed by system.
  arrange(year, title, system)



save(zelda, file = "3.RData")

