# 📚 Librarian

## Problem to Solve

You have tended to a vast library at the edge of the woods for many years, helping readers find the knowledge they need to continue on their journey.

In a folder named library, in files named log.R and answers.txt, help several readers find the books they are looking for.

## Distribution Code

For this problem, you’ll need to download `log.R`, `answers.txt`, and two CSV files: `books.csv` and `authors.csv`.

```R
download.file("https://cdn.cs50.net/r/2024/x/psets/2/librarian.zip", "librarian.zip")
```

and see `answers.txt`,` authors.csv`, `books.csv`, and `log.R`. If not, retrace your steps and see if you can determine where you went wrong!

## Schema

Before jumping in, it will be helpful to get a sense for the “schema” (i.e., organization!) of the data you’re given.

Provided to you are two CSV files: `books.csv` and `authors.csv`.

In `books.csv`, you’ll find that each row is a book in your library. For each book, you have the following information:

- `title`, which is the title of the book
- `author`, which is the author of the book
- `topic`, which is the topic of the book
- `year`, which is the year the book was published
- `pages`, which is the number of pages in the book

In `authors.csv`, you’ll find that each row is an author of a book in your library. For each author, you have the following information:

- `author`, which is the name of the author
- `hometown`, which is the hometown of the author

## Specification

For this problem, equally as important as finding the books is the process you use to do so. In `log.R`, keep a log of all R code you run to find each reader’s book. Label each section with a comment: in R, comments are any lines that begin with `#`, per the below:

```R
# This is a comment in R
```

The comment should describe why you’ve written the code you’ve written, as well as what information you’re hoping to glean from it. Ultimately, `log.R` should serve as evidence of the process you used to find each book!

Upon finding a book, complete the corresponding line in `answers.txt` by filling in the book’s title. Be sure not to change any of the existing text in the file or to add any other lines to the file!

### See a sample completed `answers.txt` file

```text
The Writer is looking for: Navigating the Literary Market
The Musician is looking for: The Art of Piano Playing
The Traveler is looking for: Elemental Conjurations
The Painter is looking for: The Abstract Revolution
The Scientist is looking for: The Diversity of Birds
The Teacher is looking for: Fostering a Sense of Belonging
```

Ultimately, you should submit both your `log.R` and `answers.txt` files.

### The Writer

Your first reader of the day walks up to your desk and greets you:

> *Dearest librarian, curator, cataloger! I yearn, hunger, dream for the author Mia Morgan’s sole, only, exclusive book! Please uncover it, fetch it, retrieve it for me. I will owe you a great debt, a wonderful sum, an immortal obligation.*

In `log.R`, write R code to find the title of the book that The Writer is referencing. Once you’ve found the title, write it in `answers.txt`.

### The Musician

A reader with a ukulele walks up to your desk:

> *Hey, I’m on the lookout for a book on the topic of music, a real classic. I think it hit the shelves back in 1613. Music history is just so fascinating, don’t you think?*

In `log.R`, write R code to find the title of the book that The Musician is referencing. Once you’ve found the title, write it in `answers.txt`.

### The Traveler

> *A hunched, cloaked figure approaches your desk, handing you a sheet of paper without saying a word. On it, you see two possible author names: Lysandra Silverleaf or Elena Petrova. Below, you see the year in which the book was published: 1775.*

In `log.R`, write R code to find the title of the book that The Traveler is referencing. Once you’ve found the title, write it in answers.txt.

### The Painter

From behind, you hear a reader call to you:

> *Oh, I remember this wonderful book on the topic of art from my childhood! It was like a burst of colors—vivid reds, soothing blues, vibrant yellows. It was not too long, not too short, probably between 200 and 300 pages. And it was definitely published in either 1990 or 1992, but absolutely not 1991.*

In `log.R`, write R code to find the title of the book that The Painter is referencing. Once you’ve found the title, write it in `answers.txt`.

### The Scientist

You receive a phone call:

> *I need the book with “Quantum Mechanics” in the title.*

In `log.R`, write R code to find the title of the book that The Scientist is referencing. Once you’ve found the title, write it in `answers.txt`.

#### Hint

The function [grepl](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/grep) determines—`TRUE` or `FALSE`—whether a pattern of characters is present in another character string. For instance, consider the following:

```R
grepl("Biology", "The Biology of Coral Reefs")
```

which would return:

```R
TRUE
```

`grepl` can also be used with vectors:

```R
grepl("Biology", c("The Biology of Coral Reefs", "The Biology of Plants", "Marine Conservation"))
```

The above would return a vector of length three:

```R
TRUE TRUE FALSE
```

### The Teacher

A small knock on the door reveals your next reader:

> *Apologies for the trouble, but I’m looking for a book on the topic of education published in the 1700s. Unfortunately, I can’t recall the author, but I do remember they hailed from the town of Zenthia.*

In `log.R`, write R code to find the title of the book that The Teacher is referencing. Once you’ve found the title, write it in `answers.txt`.

#### Hint

The logical operator `%in%` returns whether a given value is in a vector—`TRUE` or `FALSE`. For instance, consider the following:

```R
"Kenji Sato" %in% c("Jack Parker", "Kenji Sato")
```

which would return:

```R
TRUE
```

Similar to other logical operators such as & and |, %in% is vectorized. Consider the following:

```R
c("Alaric Runeweaver", "Kenji Sato", "Thalia Starbinder") %in% c("Jack Parker", "Kenji Sato")
```

which would return a vector of length three:

```R
FALSE TRUE FALSE
```

### Usage

Assuming `log.R` is in your working directory, you might find it most helpful to use **Command + Enter** (if on Mac) or **Control + Enter** (if on Windows) to run individual lines of code from `log.R`.
