# 📐 Measure Twice

## Problem to Solve

The [`str_length`](https://stringr.tidyverse.org/reference/str_length.html) function in the [`stringr`](https://stringr.tidyverse.org/reference/index.html) package measures the length of strings. For example, `str_length("abc")` returns 3, the number of characters in the string.

Of course, the `str_length` function was written by a programmer like you! Someone, at some point, sat down to create a function that easily measures the length of strings. To be sure the function would work correctly for you, too, they wrote some unit tests to methodically check their work.

In this problem, you’ll build on the work of `str_length’s` author by writing tests that ensure the function behaves as expected. In a file called `test-str_length.R`, in a folder called `measure`, write a set of test cases to thoroughly test the `str_length` function.

## Getting Started

For this problem, you’ll need to create `test-str_length.R` in a folder called `measure`.

## Specification

In `test-str_length.R`, write a series of `testthat` tests to thoroughly test the `str_length` function. As inspiration, consider taking a look at the (actual!) tests for `str_length` at [github.com/tidyverse/stringr/blob/main/tests/testthat/test-length.R](https://github.com/tidyverse/stringr/blob/main/tests/testthat/test-length.R). Odds are you should be able to understand most of these tests as written!

You’ll want to begin `test-str_length.R` by loading both the `stringr` package and `testthat`:

```R
library(stringr)
library(testthat)
```

Below, write at least four tests with at least one test case each. That is, be sure to invoke `test_that` and an `expect` function at least four times. Your tests should expect the behavior outlined in the documentation for `str_length`, [stringr.tidyverse.org/reference/str_length.html](https://stringr.tidyverse.org/reference/str_length.html).

## Advice

Unsure what to test? Consider any of the below:

1. Does `str_length` return the expected output for non-alphabetical characters, such as whitespace, punctuation, or emoji?
2. Does `str_length` return the expected output for special values such as `NA`, `NaN`, `Inf`, and `-Inf`?
3. Does `str_length` return the expected output for vector inputs? What about a data frame as input?
