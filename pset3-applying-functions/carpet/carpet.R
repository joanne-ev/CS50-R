calculate_growth_rate <- function(years, visitors) {
  # TODO: Calculate yearly growth of visitors
  # Calculate year difference
  year_difference <- max(years) - min(years)

  # Calculate visitor difference
  visitor_difference <- max(visitors) - min(visitors)

  # Calculate yearly growth
  yearly_growth <- visitor_difference / year_difference

  return (yearly_growth)
}

predict_visitors <- function(years, visitors, year) {
  # TODO: Predict visitors in given year
  # Calculate growth rate
  growth_rate <- calculate_growth_rate(years, visitors)

  # Find the latest year
  latest_year <- max(years)

  # Find the number of visitors for the latest year
  latest_visitors <- visitors[years == latest_year]

  # Calculate the difference between the latest year and the year to predict
  years_ahead <- year - latest_year

  # Calculate predicted visitors for the year to predict
  predicted <- latest_visitors + (growth_rate * years_ahead)

  return(predicted)

}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
