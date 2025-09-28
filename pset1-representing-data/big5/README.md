# 5️⃣ Big 5

## Problem to Solve

Ever taken a BuzzFeed quiz to determine whether you’re more like a brownie or a chocolate chip cookie? Turns out personality can be characterized in many ways and—within the present-day psychological community—some of the most common traits to describe personality include:

- *Extroversion*, the extent to which one might be socially outgoing
- *Neuroticism*, the extent to which one might experience emotional swings
- *Agreeableness*, the extent to which one might seek to be cooperative and empathetic
- *Conscientiousness*, the extent to which one might prioritize order and self-discipline
- *Openness*, the extent to which one might be open to new experiences

These 5 personality traits are together referred to as “The Big 5”. Psychologists (or those who are just curious about their personality!) might use various personality tests to assess the relative strength of these traits in one’s personality.

In a program called `big5.R`, in a folder called `big5`, write a program to analyze the results of thousands of Big 5 personality tests.


## Distribution Code

For this problem, you’ll need to download big5.R, along with a tests.tsv file and corresponding codebook.

Open RStudio per the linked steps and navigate to the R console:

``` r
>
```

Next execute

``` r
getwd()
```

to print your working directory. Ensure your current working directory is where you’d like to download this problem’s distribution code. If using RStudio through `cs50.dev` the recommended directory is `/workspaces/NUMBER` where `NUMBER` is a number unique to your codespace.

If you do not see the right working directory, use `setwd` to change it!

Next execute

``` r
download.file("https://cdn.cs50.net/r/2024/x/psets/1/big5.zip", "big5.zip")
```

in order to download a ZIP called `big5.zip` into your codespace.

Then execute

``` r
unzip("big5.zip")
```

to create a folder called `big5`. You no longer need the ZIP file, so you can execute

``` r
file.remove("big5.zip")
```

Now type

``` r
setwd("big5")
```

followed by Enter to move yourself into (i.e., open) that directory. Your working directory should now end with

``` r
big5/
```

If all was successful, you should execute

```
list.files()
```

and see files named `big5.R`, `codebook.txt`, and `tests.tsv`. If not, retrace your steps and see if you can determine where you went wrong!

## Specification

In `big5.R`, analyze the personality tests in `tests.tsv`, writing the results to a new file, `analysis.csv`.

`analysis.csv` should retain all columns in `tests.tsv`, with the following updates:

- Convert the gender column from a numeric representation to a textual representation.
- Add the following columns:
    - `extroversion`, a column that represents each test’s result on the extroversion trait
    - `neuroticism`, a column that represents each test’s result on the neuroticism trait
    - `agreeableness`, a column that represents each test’s result on the agreeableness trait
    - `conscientiousness`, a column that represents each test’s result on the conscientiousness trait
    - `openness`, a column that represents each test’s result on the openness trait

To understand `tests.tsv`, be sure to reference `codebook.txt`!

### Convert Demographic Data

To convert values in the `gender` column to text, adhere to the mapping between numbers and text provided by `codebook.txt`.

### Compute Test Results

Test results for each Big 5 personality trait should be computed as follows:

- Sum the values of the relevant columns.
- Divide by the maximum possible sum for those columns (which is 15!).
- Round the test results to 2 decimal places using a function called `round`.

## Advice

Consider the below as advice to help you on your way:

### Read a .tsv file

`tests.tsv` is a Tab-Separated Values file. A `.tsv` is much like a `.csv`, save for the fact that values are separated by tab characters, not commas. For this reason, a function like `read.csv` won’t be suitable.

Consider the more generic read.table, passing the right value to its `sep` parameter. In particular, a tab character can be represented with `"\t"`. If curious, `\t` is an example of an escape character.

### Add a new column to a data frame

To add a new column to a data frame, simply assign a new vector to the data frame. For example, to create a new column called `extroversion` on a data frame called `tests`, consider the below

```R
tests$extroversion <- ...
```

where `...` is replaced with the vector you wish to assign to the extroversion column.

## Usage

Assuming `big5.R` is in your working directory, enter the below in the R console to test your program:

```R
source("big5.R")
```
