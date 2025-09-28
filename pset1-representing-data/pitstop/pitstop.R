# Find the dataset of the required country
csv_file <- tolower(readline("What country would you like to analyse the races from? "))
print(csv_file)

df <- read.csv(csv_file)

# The total number of pit stops
length(df$team)

# The duration of the shortest pit stop
min(df$time)

# The duration of the longest pit stop
max(df$time)

# The total time spent on pit stops during the race, across all racers
sum(df$time)
