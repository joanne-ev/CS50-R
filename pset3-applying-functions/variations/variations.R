random_character <- function() {
  # TODO: Return one random letter
  l <- sample(letters, 1)
  return(l)
}

print_sequence <- function(length) {
  # TODO: Print a random sequence of specified length
  i = 0

  while (i < length) {
    letter <- random_character()
    cat(letter)
    i <- i + 1
    Sys.sleep(0.25)
  }
}

print_sequence(length=20)