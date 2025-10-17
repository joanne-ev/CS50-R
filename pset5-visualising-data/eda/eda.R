library(tidyverse)

cc <- read_csv("coffee-and-code.csv")

# What is the average number of cups of coffee drank before, while and after coding?

average_cups <- cc |>
  group_by(CoffeeTime) |>
  summarise(CoffeeCupsPerDay = mean(CoffeeCupsPerDay)) |>
  ungroup() |>
  filter(CoffeeTime == "After coding" | CoffeeTime == "Before coding" | CoffeeTime == "While coding")


p <- ggplot(average_cups, aes(x = CoffeeTime, y = CoffeeCupsPerDay)) +
  geom_col(aes(fill = CoffeeTime), show.legend = FALSE) +
  scale_fill_viridis_d("Candidate") +
  labs(
    x = "Time",
    y = "Avergae Number of Coffees Drank"
  ) +
  theme_classic()

ggsave("visualization.png", plot=p)
