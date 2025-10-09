# Gather user input
taste <- tolower(readline("What flavour would you like? "))
caffeine <- tolower(readline("HWould you like some caffeine? "))

# Valid options
taste_options <- c("light", "bold")
caffeine_options <- c("yes", "no")

# Check if user input is valid
if (!(taste %in% taste_options)) {
  stop("Please select a valid taste option: Light or Bold")

} else if (!(caffeine %in% caffeine_options)) {
  stop("Please select a valid caffeine option: Yes or No")
}

# Recommended tea
if (taste == "light" & caffeine == "yes") {
  tea <- "green"

} else if (taste == "light" & caffeine == "no") {
  tea <- "chamomile"

} else if (taste == "bold" & caffeine == "yes") {
  tea <- "black"

} else if (taste == "bold" & caffeine == "no") {
  tea <- "rooibos"
}

print(paste(tea, "tea"))

# Recommended food
if (tea == "green") {
  food <- "fried rice"
} else if (tea == "chamomile") {
  food <- "biscuits"
} else if (tea == "black") {
  food <- "toast"
} else if (tea == "rooibos") {
  food <- "cake"
}

print(paste("Have some", food, "with your", tea, "tea"))
