test_that("letternumber returns an error when phrase does not contain letters", {
  expect_error(letternumber(1))
  expect_error(letternumber("1"))
  expect_error(letternumber("omg!"))
  expect_error(letternumber())
})

test_that("letternumber returns phrase as numbers", {
  expect_equal(letternumber("joanne"), c(10, 15, 1, 14, 14, 5))
  expect_equal(letternumber("strong hand"), c(19, 20, 18, 15, 14, 7, 8, 1, 14, 4))
  expect_equal(letternumber("omg"), c(15, 13, 7))
})
