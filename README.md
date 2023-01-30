# Global temperatures analysis

![pollution-ge479fe112_1920](https://user-images.githubusercontent.com/81832365/215517809-6fe64560-e1a8-4b55-820b-d1d80bcbba2a.jpg)


## Intro

In this quick project, I have analyzed some climate change data using shell. I have used some simple programs, including awk or sed to do the needed cleaning and the calculations.

## Data

The dataset used is available [here](https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data), and it is owned by Berkeley Earth. Its license is CC BY-NC-SA 4.0. This is an interesting dataset which gives tons of relevant information on climate change. 

## Results
The original GlobalTemperatures.csv data can be found in the data folder, as well as the modified csv data file. The analysis results can be found in the main repository, named as output.txt. The rest of the files are intermediate scripts.

Year-to-year mean temperature study
______________________
 

| Decade | Mean temperature | Change       |
| ------ | ---------------- | ------------ |
| 1      | 6,49306          | 6,49306      |
| 2      | 6,1875           | -0,305556    |
| 3      | 6,73611          | 0,548611     |
| 4      | 6,25             | -0,486111    |
| 5      | 6,65278          | 0,402778     |
| 6      | 6,11806          | -0,534722    |
| 7      | 5,90972          | -0,208333    |
| 8      | 6,35417          | 0,444444     |
| 9      | 6,02083          | -0,333333    |
| 10     | 6,27778          | 0,256944     |
| 11     | 6,21528          | -0,0625      |
| 12     | 6,44444          | 0,229167     |
| 13     | 6,52778          | 0,0833333    |
| 14     | 6,22917          | -0,298611    |
| 15     | 6,48611          | 0,256944     |
| 16     | 6,40972          | -0,0763889   |
| 17     | 6,5625           | 0,152778     |
| 18     | 6,74306          | 0,180556     |
| 19     | 6,79861          | 0,0555556    |
| 20     | 6,875            | 0,0763889    |
| 21     | 6,80556          | -0,0694444   |
| 22     | 6,77083          | -0,0347222   |
| 23     | 6,875            | 0,104167     |
| 24     | 7                | 0,125        |
| 25     | 7,27778          | 0,277778     |
| 26     | 7,58333          | 0,305556     |
 
__________________________
 
Year-to-year mean increase/decrease
__________________________
 
Years where mean increased: 124 , mean increase: 0,00203803
Years where mean decreased: 102 , mean decrease: -0,00245948
Years without mean change: 37
Increase ratio: 0,828644
___________________________
 
Month-to-month Mean temperature and error analysis, along with year of maximum temperature for each month
___________________________
 
| Month | MeanTemperature | MeanError | MaxTemp | MaxTempYear | MaxError |
| ----- | --------------- | --------- | ------- | ----------- | -------- |
|     1 |          2,234… |    1,229… |     6,8 |       1.762 |      3,7 |
|     2 |          2,921… |    1,220… |     6,4 |       1.775 |      3,1 |
|     3 |          4,899… |    0,957… |     7,7 |       1.775 |      2,3 |
|     4 |          8,198… |    0,806… |    13,7 |       1.780 |      3,0 |
|     5 |         11,099… |    0,760… |    16,0 |       1.774 |      2,5 |
|     6 |         13,296… |    0,714… |    17,1 |       1.757 |      4,5 |
|     7 |         14,253… |    0,729… |    19,0 |       1.761 |      2,6 |
|     8 |         13,703… |    0,718… |    17,9 |       1.757 |      4,0 |
|     9 |         11,677… |    0,697… |    14,8 |       1.757 |      3,1 |
|    10 |          8,849… |    0,730… |    10,8 |       2.015 |      0,1 |
|    11 |          5,687… |    0,898… |     8,1 |       1.775 |      4,5 |
|    12 |          3,145… |    1,003… |     5,8 |       1.814 |      4,2 |
 
___________________________
 
Analysis of mean temperatures by 5 degree intervals
___________________________
 
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
 
___________________________
 
Analysis of months with higher temperatures
___________________________
 
|  Year | Month | MeanTemperature | Error |
| ----- | ----- | --------------- | ----- |
| 1.995 |     7 |            15,1 |   0,0 |
| 1.998 |     7 |            15,3 |   0,0 |
| 2.001 |     7 |            15,1 |   0,1 |
| 2.002 |     7 |            15,3 |   0,0 |
| 2.005 |     7 |            15,1 |   0,0 |
| 2.007 |     7 |            15,2 |   0,1 |
| 2.008 |     7 |            15,1 |   0,0 |
| 2.009 |     7 |            15,2 |   0,1 |
| 2.010 |     7 |            15,2 |   0,0 |
| 2.011 |     7 |            15,4 |   0,1 |

## Conclusions

The output folder contains all the outputs given for the different methods used. 
We see how, in general, the series used is complete from 1753. A decade-to-decade study gives the chilling perspective of a mean increase of 0.8º C the last 4 decades. However, we should consider some measuring error. 
This analysis can be an example on how Shell can be an interesting tool for a quick processing of csv files.

## Other

Please note that since this work only aimed at developing some tasks that would normally be done in pandas or R, a very deep analysis can’t be found here. This is only an exploration of the potential of shell tools for a quick analysis.
