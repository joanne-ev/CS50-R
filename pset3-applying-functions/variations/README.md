# 📚 Variations

## Problem to Solve

In The Library of Babel, a 1941 short story, Jorge Luis Borges imagined an unending library, filled with infinite books whose pages were each random variations of letters. If such a library existed, it would contain everything from your own life story to the ultimate fate of humanity: the only task, of course, would be to find it in the sea of randomness.

Such a library doesn’t exist, but you can approximate it through R! In a program called `variations.R`, in a folder called `variations`, write a program to generate random sequences of the 26 letters, a–z. Maybe you’ll get lucky with a coherent phrase!

## Distribution Code

For this problem, you’ll need to download `variations.R`.

```R
download.file("https://cdn.cs50.net/r/2024/x/psets/3/variations.zip", "variations.zip")
```

## Specification

In `variations.R`, complete the provided functions, `random_character` and `print_sequence`. Use these functions to write a program that outputs random sequences of the lowercase letters a–z. Your program should:

- Output 20 character-long sequences.
- Wait 0.25 seconds between printing each character, to give the appearance of characters being typed.

You might find these functions of use:

- [`sample`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sample), which “takes a sample of the specified size” from the elements of its first argument.
- [`Sys.sleep`](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/Sys.sleep), which can “suspend execution for a specified interval.”

You might also like to know that `letters`, an object built into R, is a vector that includes all 26 lowercase letters a–z!

## How to Test

Here’s how to test your code manually:

1. Run your program with `source("variations.R")`. Your program should output a random sequence of 20 characters, lowercase a–z, while waiting a quarter of a second between printed characters.
