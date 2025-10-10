# 😄 Happy

## Problem to Solve

Since 2012, The World Happiness Report has sought to understand the state of global happiness and the factors that most influence it. On a country-by-country basis, the report has focused on several factors that tend to increase people’s self-reported happiness: a higher **gross domestic product** (one way of measuring economic prosperity), a higher level of **social support**, a longer **life expectancy**, more **freedom in life choices**, a tendency toward **generosity**, and lower **perceptions of governmental corruption**. Using survey responses from participants in 140+ countries, The World Happiness report generates a happiness “score” for each country.

**To be clear, there’s more to happiness than these scores**: a single number can’t tell the full story of a country’s mood. At the same time, data in The World Happiness Report can reveal inequalities in self-reported happiness to which it may be worth paying attention.

In a program called `happy.R`, in a folder called `happy`, write a program to return a given country’s self-reported happiness “score” out of 10 across multiple years of The World Happiness Report’s data.

## Distribution Code

For this problem, you’ll need to download `happy.R` and several CSV files.

```R
download.file("https://cdn.cs50.net/r/2024/x/psets/3/happy.zip", "happy.zip")
```

## Schema

Before jumping in, it will be helpful to get a sense for the “schema” (i.e., organization!) of the data you’re given.

### Learn about this data

In this problem, you are given several CSV files. Each file contains data directly from past years’ issues of [The World Happiness Report](https://worldhappiness.report/). For example, `2024.csv` contains data from 2024.

Each row in each CSV reflects an observation of a country’s self-reported happiness, as captured by polling participants in each country. A country’s self-reported happiness “score” is distributed across a number of factors:

- `gdp`, represents the amount of self-reported happiness explained by a country’s gross domestic product (GDP).
- `support`, represents the amount of self-reported happiness explained by participants’ perceived level of social support.
- `life_expectancy`, represents the amount of self-reported happiness explained by a country’s life expectancy.
- `freedom`, represents the amount of self-reported happiness explained by participants’ perceived freedom in life choices.
- `generosity`, represents the amount of self-reported happiness explained by participants’ perceived tendency towards generosity.
- `corruption`, represents the amount of self-reported happiness explained by participants’ lack of perceived governmental corruption.
- `residual`, represents the amount of self-reported happiness explained by factors beyond the above.

To find a country’s total happiness “score,” then, you must sum each of these factors, including residual. The maximum score a country can achieve is 10.

How does The World Happiness Report determine how much happiness is influenced by each of these factors? Feel free to read more about their [methodology](https://worldhappiness.report/ed/2024/happiness-of-the-younger-the-older-and-those-in-between/).

## Specification

As per the demo, in `happy.R`, write a program that:

- Prompts the user for a country’s name
- Outputs, for each year of data:
    - The country’s total happiness “score,” rounded to two decimal places
    - The year in which the country achieved that score

If a country is not included in a given year’s data, your program should instead output that data is “unavailable” for that year. Your program should still print data for other years in which there is data available.

## Advice

Consider the below as advice to help you on your way:

### Use a loop to iterate over years

Keep in mind that, for each year of data, you’ll need to compute a country’s happiness score. A `for` loop is especially helpful when you want to accomplish a task a certain number of times (e.g., for each year of data).

### Use apply to compute happiness scores

Recall that computing a country’s happiness score is as simple as summing the factors that contribute to that score. Since each row in each CSV file represents a single country’s happiness score, consider applying the sum function on each row.

If there are columns you’d like to exclude from your calculation, consider temporarily dropping them from your data frame: for instance `df[, -1]` and `df[, -2]` will drop the first or second columns of a data frame, respectively.

### Use %in% to check if a country exists

Recall that `%in%` is useful for determining if a value is part of a vector. You could, then, check if the country the user has entered is `%in%` a given year’s vector of countries.

## How to Test

Here’s how to test your code manually:

1. Run your program with `source("happy.R")`. Type “United States.” Your program should output a score of 6.94 for 2020, 6.95 for 2021, 6.98 for 2022, 6.89 for 2023, and 6.72 for 2024.
2. Run your program with `source("happy.R")`. Type “Finland.” Your program should output a score of 7.81 for 2020, 7.84 for 2021, 7.82 for 2022, 7.80 for 2023, and 7.74 for 2024.
3. Run your program with `source("happy.R")`. Type “Bhutan.” Your program should output that data is “unavailable” across all years.
