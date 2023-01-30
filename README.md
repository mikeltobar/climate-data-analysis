# Global temperatures analysis

![pollution-ge479fe112_1920](https://user-images.githubusercontent.com/81832365/215517809-6fe64560-e1a8-4b55-820b-d1d80bcbba2a.jpg)


## Intro

In this quick project, I have analyzed some climate change data using shell. I have used some simple programs, including awk or sed to do the needed cleaning and the calculations.

## Data

The dataset used is available [here](https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data), and it is owned by Berkeley Earth. Its license is CC BY-NC-SA 4.0. This is an interesting dataset which gives tons of relevant information on climate change. 

## The analysis

The original GlobalTemperatures.csv data can be found in the data folder, as well as the modified csv data file. The analysis results can be found in the main repository, named as output.txt. The rest of the files are intermediate scripts.

## Conclusions

The output folder contains all the outputs given for the different methods used. 
We see how, in general, the series used is complete from 1753. A decade-to-decade study gives the chilling perspective of a mean increase of 0.8º C the last 4 decades. However, we should consider some measuring error. 
This analysis can be an example on how Shell can be an interesting tool for a quick processing of csv files.

## Other

Please note that since this work only aimed at developing some tasks that would normally be done in pandas or R, a very deep analysis can’t be found here. This is only an exploration of the potential of shell tools for a quick analysis.
