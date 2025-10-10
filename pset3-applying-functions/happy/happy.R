# Prompt user for a country
user_country <- readline("Country: ")

# Iterate over each year
for (year in 2020:2024) {

  # Read CSV
  happiness <- read.csv(paste0(year, ".csv"))

  # List all recorded countries
  countries <- unique(happiness$country)

  # Check country entered is in the list of countries recorded for the year
  if (user_country %in% countries) {

    # Select yearly data for that country
    yearly_happiness <- subset(happiness, country == user_country, select = 2:ncol(happiness))

    # Calculate happiness score
    happiness_score <- apply(yearly_happiness, MARGIN=1, FUN=sum)

    # Print happiness score
    print(paste("Happiness score for", year, ":", round(happiness_score, 2)))

  } else {
    # If the country was not recorded for the year
    print(paste("Happiness score for", year, ": Unavailable"))
  }
}
