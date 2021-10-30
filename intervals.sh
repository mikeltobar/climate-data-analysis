# This .sh file uses some SQL queries to get cumulative data of the monthly series.

#!/usr/bin/bash

echo "___________________________"
echo " "
echo "Month-to-month Mean temperature and error analysis, along with year of maximum temperature for each month"
echo "___________________________"
echo " "
csvsql --query "SELECT Month,AVG(MeanTemperature) as MeanTemperature,AVG(Error) as MeanError, MAX(MeanTemperature) as MaxTemp, Year as MaxTempYear, Error as MaxError FROM temperatures_clean GROUP BY Month ORDER BY Month" temperatures_clean.csv | csvlook
echo " "
echo "___________________________"
echo " "
echo "Analysis of mean temperatures by 5 degree intervals"
echo "___________________________"
echo " "
csvsql --query "SELECT Month,SUM(CASE WHEN MeanTemperature < 0 THEN 1 ELSE 0 END) AS [Less than 0], SUM(CASE WHEN MeanTemperature BETWEEN 0 AND 4.9 THEN 1 ELSE 0 END) AS [0-5], SUM(CASE WHEN MeanTemperature BETWEEN 5 AND 9.9 THEN 1 ELSE 0 END) AS [5-10], SUM(CASE WHEN MeanTemperature BETWEEN 10 AND 14.9 THEN 1 ELSE 0 END) AS [10-15], SUM(CASE WHEN MeanTemperature BETWEEN 15 AND 20 THEN 1 ELSE 0 END) AS [15-20]  FROM temperatures_clean GROUP BY Month " temperatures_clean.csv | csvlook
echo " "
echo "___________________________"
echo " "
echo "Analysis of months with higher temperatures"
echo "___________________________"
echo " "
csvsql --query "SELECT Year,Month,MeanTemperature,Error FROM temperatures_clean WHERE MeanTemperature>15 AND Error<0.5 " temperatures_clean.csv | csvlook
