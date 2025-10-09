# 🕗 Ontime

## Problem to Solve

Built to help people stay on time while moving around the city, the first subway tunnels in the United States are still in use today under Boston Common (not too far from Harvard itself!). Over 100 years later, the MBTA—the Massachusetts Bay Transportation Authority—manages public transportation around Boston, still ensuring everyone can stay on time, whether by subway, bus, railroad, or ferry.

In `ontime.R`, in a folder called ontime, write a program to tell users how likely they are to be on time while taking a particular MBTA route.

## Distribution Code

For this problem, you’ll need to download `ontime.R` and two `.csv` files: `bus.csv` and `rail.csv`.

```R
download.file("https://cdn.cs50.net/r/2024/x/psets/2/ontime.zip", "ontime.zip")
```

and see `bus.csv`, `ontime.R`, and `rail.csv`. If not, retrace your steps and see if you can determine where you went wrong!

## Schema

Before jumping in, it will be helpful to get a sense for the “schema” (i.e., organization!) of the data you’re given.

In this problem, you are given two `.csv` files: `bus.csv` and `rail.csv`. Each file contains data directly from the MBTA’s Open Data Portal.

Each row in each CSV reflects an observation of the reliability of an MBTA service, known as “service reliability” by the MBTA. Let’s approach this idea in two parts:

- **Service:** consider a “service” to be a mode of transportation, such as a bus or subway, traveling a particular route on a particular day. For example, on most days, the MBTA operates the Red Line subway service, which goes from Alewife to Braintree.

- **Reliability:** consider “reliability” to be how often a service is on time. The MBTA calculates reliability quite simply:
    $$
    reliability= \frac{numerator}{denominator}
    $$
    That is, for each row, dividing the value in the **numerator** column by the value in the **denominator** column returns the percentage of time that a particular service was on time.

Let’s explore the rest of the columns, for thoroughness:
- `year`, which is the year in which the service took place.
- `month`, which is the month in which the service took place.
- `day`, which is the day on which the service took place.
- `mode`, which is the service’s mode of transportation (e.g., either “Bus” or “Rail”).
- `route`, which is the route the service takes.
- `peak`, which is whether the service took place during peak (busy) hours or off-peak (less busy) hours. This value is either “PEAK” or “OFF_PEAK.”
- `numerator`, which is the numerator value used to calculate service reliability.
- `denominator`, which is the denominator value used to calculate service reliability.

## Specification

In `ontime.R`, use the data provided in `bus.csv` and `rail.csv` to write a program that:

1. Prompts the user to enter a route they intend to take.
2. Outputs the mean reliability for all services along that route. Output two means: one for peak hours and one for off-peak hours. Express the mean as a percentage, rounded to the nearest whole percentage point.
    - For instance, if a user enters “Blue,” find the mean reliability—for both peak and off-peak hours—among all rows with “Blue” as the listed route. Express the result as a percentage, rounded to the nearest whole percentage point.
3. Tells the user to enter a valid route if they enter an invalid one.

If you haven’t already, learn more about the schema of this data before starting!


### Advice: Use the `%in%` operator to validate a user's input

The logical operator `%in%` returns whether a given value is in a vector—`TRUE` or `FALSE`. For instance, consider the following:

```R
"Red" %in% services$route
```

which would return

```R
TRUE
```

if “Red” is among the values in the route column of the services data frame.

## How to Test

Here’s how to test your code manually:

1. Run your program with `source("ontime.R")`. Type “Blue”. Your program should output that the Blue line is on time 93% of the time during peak hours and 92% of the time during off-peak hours.
2. Run your program with `source("ontime.R")`. Type “86”. Your program should output that the 86 bus route is on time 72% of the time during peak hours and 65% of the time during off-peak hours.
3. Run your program with `source("ontime.R")`. Type “Purple”. Your program should let the user know that this is not a valid route.
