letternumber <- function(phrase) {

  # Clean phrase
  phrase_clean <- phrase |>
    # Remove all whitespace
    gsub(pattern = " ", replacement = "", x = _) |>
    # Force all characters to lower case
    tolower()

  # Create a vector to store numbers
  number_letter <- c()

  # Iterate over each character
  for (i in 1:nchar(phrase_clean)) {
    char <- substring(phrase_clean, i, i)

    # Check if character is a letter
    if (char %in% letters) {
      # Find the position of the letter
      letter_pos <- which(char == letters)
      number_letter <- c(number_letter, letter_pos)
    } else {
      # Return an error
      stop("`phrase` must only have alphabetical characters.")
    }
  }

  return(number_letter)
}