# 🛩️ PDX Carpet

## Problem to Solve

Weirdly hailed as “iconic,” “classic,” and “beloved,” the carpet at Portland International Airport (PDX) has maintained a special place in the city of Portland Oregon’s history since it was installed in the early 1990s. Despite the carpet’s loyal following, PDX was forced to replace the design in 2015 due to the wear and tear from so many visitors. After deciding to give away patches of the former carpet, the airport saw cars lined up for hours to snag a piece of Portland history.

In this problem you’ll go back in time, using R to help PDX predict when they should replace their beloved carpet. You’ll do so by predicting the number of travelers who’ll walk across the PDX carpet in any given year. In a file called carpet.R, in a folder called carpet, write a program to do just that.

## Distribution Code

For this problem, you’ll need to download `carpet.R` and `visitors.csv`.

```R
download.file("https://cdn.cs50.net/r/2024/x/psets/3/carpet.zip", "carpet.zip")
```

## Specification

In `carpet.R`, your goal is to use R to help PDX predict the number of travelers who will walk across the PDX carpet in a given year.

Provided to you is `visitors.csv`, which documents—between 2002 and 2014—the number of yearly visitors to PDX, in millions.

To predict the number of travelers who will walk across the PDX carpet in a given year, you’ll implement two functions:

- `calculate_growth_rate`, which will calculate the average yearly increase in visitors that PDX should expect
- `predict_visitors`, which will predict the number of visitors to PDX in a given year

The rest of the program is already done for you!

### Calculating Yearly Growth Rate

In the function `calculate_growth_rate`, you need to calculate the average yearly increase in visitors that PDX should expect.

To do this, you’ll work with a vector of years and a vector of visitors. You can assume both vectors are the same length, and the positions of the elements indicate correspondence. For example, the first year corresponds with the first number of visitors, the second year with the second number of visitors, and so on.

To find the average yearly growth rate, follow these steps:

1. Find the difference between the number of visitors in the latest year and the number of visitors in the first year.
2. Find the difference between the latest year and the first year.
3. Divide the difference in visitors by the difference in years to get the average yearly growth.

Or, put another way, the average yearly growth in visitors is:

$$
\frac{\text{number of visitors in the latest year} − \text{number of visitors in the first year}}{\text{latest year} - \text{first year}}
$$

### Predict Visitors

In the function `predict_visitors`, you need to predict the number of visitors to PDX in a given year.

To predict the number of visitors in a given year, create a projection from the latest data using the yearly growth rate from `calculate_growth_rate`.

For example, consider how you might predict yearly visitors in 2024 if the latest data shows 10 million visitors in 2020 and the yearly growth rate is 1 million visitors:

1. Start with the latest data: 10 million visitors in 2020.
2. Add the yearly growth rate (e.g., 1 million visitors) for each of the 4 years between 2020 and 2024.

The predicted number of yearly visitors in 2024 can be expressed mathematically as:

$$
\text{visitors in 2020} + (\text{yearly growth rate} \times \text{number of years from 2020 to 2024})
$$

So, in this example:

$$
\text{10 million} + (\text{1 million}/\text{year} \times  \text{4 years}) = \text{14 million visitors}
$$

## How to Test

Here’s how to test your code manually.

1. Run your program with `source("carpet.R")`. Enter 2024. Your program should output “10.24 million visitors.”
2. Run your program with `source("carpet.R")`. Enter 2034. Your program should output “12.14 million visitors.”
3. Run your program with `source("carpet.R")`. Enter 2014. Your program should output “8.34 million visitors.”
