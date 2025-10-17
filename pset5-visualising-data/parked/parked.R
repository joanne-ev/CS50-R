library(tidyverse)
install.packages("tm")
library(tm)

lyrics <- read_file("lyrics/swift.txt")

lyrics <- lyrics |>
  # Remove whitespace
  str_squish() |>
  # Change every word to be lowercase
  str_to_lower() |>
  # Remove punctuation
  removePunctuation() |>
  # Split at whitespace
  str_split(" ")

clean_lyrics <- lyrics[[1]]

# Create an empty tibble
words <- tibble(.rows = length(clean_lyrics))

# Add clean lyrics to the tibble
words['word'] <- clean_lyrics

# Gather count of each word sorted from most to least frequent if they appear more than five times
frequent_words <- words |>
  group_by(word) |>
  summarise(count = n()) |>
  ungroup() |>
  filter(count > 5)

# Build bar chart
p <- ggplot(frequent_words, aes(x = count, y = word)) +
  geom_col(aes(fill = word), show.legend = FALSE) +
  scale_x_continuous(limits = c(0, 30), n.breaks = 6) +
  scale_color_brewer(palette = "Pastel1") +
  labs(
    x = 'Frequency',
    y = 'Word'
  ) +
  theme_classic()

ggsave(p, file = "lyrics.png")
