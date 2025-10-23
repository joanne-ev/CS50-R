three_avg <- function(x) {

  # Check 1: Test for exact length
  if (length(x) != 3) {
    warning("Input vector must contain exactly three items.")
    # Use NA_real_ to be explicit about the return type
    return(NA_real_)
  }

  # Check 2: Test for numeric type and NA values
  # We check is.numeric first. If it's not numeric, !is.numeric(x) is TRUE.
  # If it is numeric, we then check if any(is.na(x)) is TRUE.
  if (!is.numeric(x) || any(is.na(x))) {
    warning("Input vector contains non-numeric or NA values.")
    return(NA_real_)
  }

  # If all checks pass, calculate and return the mean
  return(mean(x))
}
