#!/usr/bin/bash

# This .sh file will yield the needed clean file in order to perform the analysis.

echo " "
echo "Original file sample"
echo "___________________________________________"
echo " "
head -n 10 GlobalTemperatures.csv

# Regex for date formatting, NA, decimals and first line management. Creation of new file.

sed 's/\([0-9][0-9][0-9][0-9]\)-\([0-9][0-9]\)-[0-9][0-9]/\1\,\2/g' GlobalTemperatures.csv |
sed 's/\(.*,.*.,.*\),.*,.*,.*,.*,.*,.*/\1/g' |
sed 's/,,/,NA,NA/g' |
sed 's/\(^.*,-*[0-9]*\.[0-9]\)\([0-9]*\)\(,[0-9]*\.[0-9]\)\([0-9]*\)/\1\3/g' |
sed 's/dt,LandAverageTemperature,LandAverageTemperatureUncertainty/Year,Month,MeanTemperature,Error/g' > temperatures_clean.csv
echo " "
echo "___________________________________________"
echo " "
echo "Clean file sample"
echo "___________________________________________"
echo " "

head -n 10 temperatures_clean.csv
