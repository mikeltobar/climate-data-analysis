# Global temperatures analysis

![pollution-ge479fe112_1920](https://user-images.githubusercontent.com/81832365/215517809-6fe64560-e1a8-4b55-820b-d1d80bcbba2a.jpg)


## Intro

In this project, some climate change data is analyzed using shell. Unix-specific languages such as awk or sed are used to do the needed cleaning and the calculations [1].

## Data

The dataset used is available [here](https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data) [2], and it is owned by Berkeley Earth. Its license is CC BY-NC-SA 4.0. This is an very interesting dataset with tons of relevant information on the evolution of climate during the last 250 years (with some of the most recent years not included yet in it). 

The data has a monthly granularity, something that will be exploited in this analysis. It is convenient to compare how monthly means have fluctuated from the past to almost now, see where temperatures are heading, analyze the average values per month and variation per decade. Measurements are given in Celsius degrees.

It is important to note that older values are subject to a higher degree of uncertainty than newer ones, due do the unavailability of highly accurate measurement tools. 

## Methodology

The work is a series of 4 scripts, with an additional one executing them.

1. A basic preprocessing and a formatting are performed with the *cleaner.sh* script.
2. The data is scanned with the *eda.sh* script, to see how much information is missing and if it's fit to be analyzed with further scrutiny.
3. After validating the dataset, *analysis_1.awk* checks the temperature comparing each year's mean and obtaining the general trend (upwards or downwards).
4. The *analysis_2.awk* script compares the monthly averages, checks which years have had the highest values, classifies the months in 5-degree intervals, and gets the hottest ever months. It outputs the results.txt file with its corresponding tables.

All these scripts are coordinated and ran by *run.sh*, that executes them in the order above described. 

## Results

### Year-to-year mean temperature study


| Decade | Mean temperature | Change       |
| ------ | ---------------- | ------------ |
| 1      | 6.49306          | -            |
| 2      | 6.1875           | -0.305556    |
| 3      | 6.73611          | 0.548611     |
| 4      | 6.25             | -0.486111    |
| 5      | 6.65278          | 0.402778     |
| 6      | 6.11806          | -0.534722    |
| 7      | 5.90972          | -0.208333    |
| 8      | 6.35417          | 0.444444     |
| 9      | 6.02083          | -0.333333    |
| 10     | 6.27778          | 0.256944     |
| 11     | 6.21528          | -0.0625      |
| 12     | 6.44444          | 0.229167     |
| 13     | 6.52778          | 0.0833333    |
| 14     | 6.22917          | -0.298611    |
| 15     | 6.48611          | 0.256944     |
| 16     | 6.40972          | -0.0763889   |
| 17     | 6.5625           | 0.152778     |
| 18     | 6.74306          | 0.180556     |
| 19     | 6.79861          | 0.0555556    |
| 20     | 6.875            | 0.0763889    |
| 21     | 6.80556          | -0.0694444   |
| 22     | 6.77083          | -0.0347222   |
| 23     | 6.875            | 0.104167     |
| 24     | 7                | 0.125        |
| 25     | 7.27778          | 0.277778     |
| 26     | 7.58333          | 0.305556     |
 
### Year-to-year mean increase/decrease
 
+ Years where mean increased: 124 , mean increase: 0.00203803
+ Years where mean decreased: 102 , mean decrease: -0.00245948
+ Years without mean change: 37
+ Increase slope: 0.828644
 
### Month-to-month Mean temperature and error analysis, along with year of maximum temperature for each month
 
| Month | MeanTemperature | MeanError | MaxTemp | MaxTempYear| MaxError |
| ----- | ----------------| --------- | ------- | -----------| -------- |
|     1 |           2.234 |     1.229 |     6.8 |       1762 |      3.7 |
|     2 |           2.921 |     1.220 |     6.4 |       1775 |      3.1 |
|     3 |           4.899 |     0.957 |     7.7 |       1775 |      2.3 |
|     4 |           8.198 |     0.806 |    13.7 |       1780 |      3.0 |
|     5 |          11.099 |     0.760 |    16.0 |       1774 |      2.5 |
|     6 |          13.296 |     0.714 |    17.1 |       1757 |      4.5 |
|     7 |          14.253 |     0.729 |    19.0 |       1761 |      2.6 |
|     8 |          13.703 |     0.718 |    17.9 |       1757 |      4.0 |
|     9 |          11.677 |     0.697 |    14.8 |       1757 |      3.1 |
|    10 |           8.849 |     0.730 |    10.8 |       2015 |      0.1 |
|    11 |           5.687 |     0.898 |     8.1 |       1775 |      4.5 |
|    12 |           3.145 |     1.003 |     5.8 |       1814 |      4.2 |
 
### Analysis of mean temperatures by 5 degree intervals
 
| Month | Less than 0 | 0-5 | 5-10 | 10-15 | 15-20 |
| ----- | ---------- | --- | ---- | ----- | ----- |
|     1 |         12 | 247 |    4 |     0 |     0 |
|     2 |          3 | 254 |    6 |     0 |     0 |
|     3 |          0 | 138 |  125 |     0 |     0 |
|     4 |          0 |   0 |  257 |     6 |     0 |
|     5 |          0 |   0 |   20 |   241 |     2 |
|     6 |          0 |   0 |    0 |   258 |     5 |
|     7 |          0 |   0 |    0 |   237 |    26 |
|     8 |          0 |   0 |    0 |   255 |     8 |
|     9 |          0 |   0 |    6 |   257 |     0 |
|    10 |          0 |   1 |  242 |    20 |     0 |
|    11 |          0 |  46 |  217 |     0 |     0 |
|    12 |          2 | 253 |    8 |     0 |     0 |
 

### Analysis of months with higher temperatures (with error of less than 0.5)

 
|  Year | Month | MeanTemperature | Error |
| ----- | ----- | --------------- | ----- |
| 1995 |     7 |            15.1 |   0.0 |
| 1998 |     7 |            15.3 |   0.0 |
| 2001 |     7 |            15.1 |   0.1 |
| 2002 |     7 |            15.3 |   0.0 |
| 2005 |     7 |            15.1 |   0.0 |
| 2007 |     7 |            15.2 |   0.1 |
| 2008 |     7 |            15.1 |   0.0 |
| 2009 |     7 |            15.2 |   0.1 |
| 2010 |     7 |            15.2 |   0.0 |
| 2011 |     7 |            15.4 |   0.1 |

## Conclusions

We see how, in general, the series used is complete from 1753. A decade-to-decade study says temperatures are increasing with a slope of 0.8 (per 10 years). However, some measuring error should be considered for the initial values. The mean increase is more evident during the last 4 decades, with a cumulative hike of about 0.8 Celsius degrees.

Globally, the hottest months are those coinciding with the Northern's Hemisphere summer, and July can be considered the hottest month. The top 10 of hottest measurements are all in July, and concentrated in the last 30 years.

This analysis can be an example on how Shell can be an interesting tool for a quick processing of csv files.

## Other

Please note that since this work only aimed at developing some tasks that would normally be done in pandas or R, a very deep analysis can’t be found here. This is only an exploration of the potential of Shell tools for a quick analysis.

## Bibliography

[1] The GNU Awk User’s Guide [online] [accessed: 6 June 2021]. Available at: https://www.gnu.org/software/gawk/manual/gawk.html

[2] Climate Change: Earth Surface Temperature Data [online] [accessed: 6 June 2021]. Available at: https://www.kaggle.com/datasets/berkeleyearth/climate-change-earth-surface-temperature-data?select=GlobalTemperatures.csv
