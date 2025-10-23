library(testthat)
library(stringr)

test_that("`str_length` counts the length of characters in a string", {
  expect_equal(str_length("lol"), 3)
  expect_error(str_length(lol))
})

test_that("`str_length` counts the length of characters with numbers", {
  expect_equal(str_length(123), 3)
  expect_equal(str_length(0), 1)
  expect_equal(str_length(-1), 2)
})

test_that("`str_length` returns NA when present", {
  expect_equal(str_length(c(1, NA, 34)), c(1, NA, 2))
  expect_equal(str_length(NA), NA_integer_)
})

test_that("`str_length` returns the length of each item in a vector", {
  expect_equal(str_length(c(1, NA, 34)), c(1, NA, 2))
  expect_equal(str_length(c(12, 345, 6789)), c(2, 3, 4))
})
