# Find the average of vector of three numbers

source("believe.R")

test_that("`three_avg` provides the average of three numbers", {
  expect_equal(three_avg(c(1, 2, 3)), 2)
  expect_equal(three_avg(c(-1, -2, -3)), -2)
  expect_equal(three_avg(c(2, 0, 10)), 4)
})

test_that("`three_avg` returns a warning when items are not numerical", {
  expect_warning(three_avg(c(1, "two", 3)))
  expect_warning(three_avg(c("one", "two", "three")))
  expect_warning(three_avg(c(1, NA, 3)))
})

test_that("`three_avg` returns a warning when more or fewer than three numbers are provided", {
  expect_warning(three_avg(c(1, 2)))
  expect_warning(three_avg(c(1, 2, 3, 4, 5)))
})


test_that("`three_avg` returns an error when no number are provided", {
  expect_error(three_avg())
})
