# 🏎️ Pit Stop

## Problem to Solve

Ever changed your car’s tires in less than 3 seconds? In Formula One, that’s the usual!

Formula One is a type of elite, international racing. Races take place all over the world, including destinations like Miami, Florida, and Suzuka, Japan. Besides the racer themselves, each team is composed of a “pit crew” of up to 22 people. The pit crew changes tires, fixes the car, and refuels very quickly. Nowadays, an excellent pit stop can take less than 3 seconds.

In a program called `pitstop.R`, in a folder called `pitstop`, write a program to analyze pit stop times at Formula One races.

## Distribution Code

For this problem, you’ll need to download `pitstop.R`, along with several CSV files containing pit stop data. Download the distribution code

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
download.file("https://cdn.cs50.net/r/2024/x/psets/1/pitstop.zip", "pitstop.zip")
```

in order to download a ZIP called `pitstop.zip` into your codespace.

Then execute

``` r
unzip("pitstop.zip")
```

to create a folder called `pitstop`. You no longer need the ZIP file, so you can execute

``` r
file.remove("pitstop.zip")
```

Now type

``` r
setwd("pitstop")
```

followed by Enter to move yourself into (i.e., open) that directory. Your working directory should now end with

``` r
pitstop/
```

If all was successful, you should execute

```
list.files()
```

and see a file named `pitstop.R` as well as several files ending with `.csv`. If not, retrace your steps and see if you can determine where you went wrong!

## Schema

Before jumping in, it will be helpful to get a sense for the “schema” (i.e., organization!) of the data you’re given.

Each CSV file contains pit stop data from one Formula One race. For example, miami.csv contains data from the most recent Miami Grand Prix.

Each row in a CSV file represents one pit stop. In each CSV file, you’ll find the following columns:

-   `team`, which is the team doing the pit stop
-   `driver`, which is the last name of the driver doing the pit stop
-   `time`, which is how long the pit stop took, in seconds
-   `lap`, which is the lap when the pit stop happened

A team usually has 2 drivers in one race, and Formula One races have many laps (i.e., circles around the track).

## Specification

In `pitstop.R`, write a program that prompts the user to enter a CSV file to analyze. Your program should then print the following information:

-   The total number of pit stops
-   The duration of the shortest pit stop
-   The duration of the longest pit stop
-   The total time spent on pit stops during the race, across all racers

You may assume the user will not enter an invalid filename. All CSV files will have the same column names.

## Usage

Assuming `pitstop.R` is in your working directory, enter the below in the R console to test your program:

``` r
source("pitstop.R")
```
