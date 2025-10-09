bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")

user_response <- readline("What route would you like to take? ")

bus_routes <- unique(bus$route)
rail_routes <- unique(rail$route)


if (user_response %in% bus_routes) {

  # Off-peak
  off <- which(bus$peak == "OFF_PEAK" & bus$route == user_response)
  off_peak <- bus[off, ]
  off_peak_mean <- round(mean(off_peak$numerator / off_peak$denominator) * 100)

  # Peak
  pk <- which(bus$peak == "PEAK" & bus$route == user_response)
  peak <- bus[pk, ]
  peak_mean <- round(mean(peak$numerator / peak$denominator) * 100)

  # Print values
  print(paste0("On time ",  peak_mean, "% of the time during peak hours"))
  print(paste0("On time ", off_peak_mean, "% of the time during off-peak hours"))

} else if (user_response %in% rail_routes) {

  # Off-peak
  off <- which(rail$peak == "OFF_PEAK" & rail$route == user_response)
  off_peak <- rail[off, ]
  off_peak_mean <- round(mean(off_peak$numerator / off_peak$denominator) * 100)

  # Peak
  pk <- which(rail$peak == "PEAK" & rail$route == user_response)
  peak <- rail[pk, ]
  peak_mean <- round(mean(peak$numerator / peak$denominator) * 100)

  # Print values
  print(paste0("On time ",  peak_mean, "% of the time during peak hours"))
  print(paste0("On time ", off_peak_mean, "% of the time during off-peak hours"))

} else {
  print("Please enter a valid route")
}


