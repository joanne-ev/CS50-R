# 📦 Final Project

The climax of this course is its final project. The final project is your opportunity to take your newfound savvy with R for a spin and develop your very own package. We ask that you build something of interest to you, that you solve a substantive problem, that you positively impact others, or that you change the world. Strive to create something you’re proud of.

Since software development is rarely a one-person effort, you are allowed an opportunity to collaborate with one or two classmates for this final project. Needless to say, it is expected that every student in any such group contribute equally to the design and implementation of the project. Moreover, it is expected that the scope of a two- or three-person group’s project be, respectively, twice or thrice that of a typical one-person project. Although no more than three students may design and implement a given project, you are welcome to solicit advice from others, so long as you respect the course’s policy on academic honesty.

## Ideas

The ideas for what you could build are endless, though to get your thinking started, a few others have attempted projects like the below!

- A package to speed up data analysis tasks you find yourself commonly repeating (à la the [tidyverse](https://www.tidyverse.org/) or [janitor](https://sfirke.github.io/janitor/) packages)
- A package to create or analyze music files (à la the [gm](https://cran.r-project.org/web/packages/gm/vignettes/gm.html) or [tuneR](https://r-forge.r-project.org/projects/tuner/) packages)
- A package to do something whimsical, surprising, or fun (à la the [fortunes](https://cran.r-project.org/web/packages/fortunes/index.html) or [spongebob](https://cran.r-project.org/web/packages/spongebob/index.html) packages)

## Getting Started

### Project Folder

To provide you some structure with which to start building your package, we’ll give you a folder that contains the `DESCRIPTION`, `LICENSE`, and `NAMESPACE` files you need. Start by downloading the project folder.

```r
download.file("https://cdn.cs50.net/r/2024/x/project/project.zip", "project.zip")
```

Of course, you’ll likely want to rename your final project’s folder from project to the name of your package. You can do so by using:

```r
file.rename("OLD", "NEW")
```

where “OLD” is the old folder name and “NEW” is the new folder name, each in quotes. When you do this, just be sure your project folder is in your working directory and is not your current working directory itself.

## Specification

At a high level, your final project should be an R package that includes at least 3 functions, with documentation and rigorous tests. To be more specific, your final project should include all of the following:

1. A complete DESCRIPTION file
2. A complete NAMESPACE file
3. A complete LICENSE file, if appropriate
4. At least 3 .R files in a folder named R, each one defining 1 function that is part of your package
5. At least 3 .Rd files in a folder named man, each one documenting 1 of the functions you’ve implemented
6. At least 3 .R files in a folder named tests, each one testing 1 of the functions you’ve implemented
7. A video overview of your package

The requirements for each of these components are described in more detail below.

### `DESCRIPTION`

Your `DESCRIPTION` file should be at least 100 characters long.

### `NAMESPACE`

You `NAMESPACE` file should export all functions from your package you’d like others to be able to use.

### `LICENSE`

If needed, your `LICENSE` file should provide additional information about the license you’ve chosen.

### `R` folder

Your `R` folder should include at least 3 `.R` files, each with a function definition inside of them.

### `man` folder

Your `man` folder should include at least 3 `.Rd` files, with at least these required components:

- A name attribute
- A description attribute
- A usage attribute
- An arguments attribute
- A value attribute
- An examples attribute

### `tests` folder

Your tests folder (or a subfolder of it) should contain at least 3 `.R` files to test your functions from your `R` folder.

## My Idea

Name-Number Converter: A package that converts a person's name into numbers. Each number is associated with its position in the alphabet.

Example: Joanne $\rightarrow$ 515114145
