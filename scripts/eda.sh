#!/usr/bin/bash

# This .sh file analyzes the series in order to check for missing data. 

echo "___________________________"
echo " "
echo "Anual series completeness study:"
echo "__________________________"
echo " "
echo "1. Years with an incomplete series:"
echo " "
echo "Year, Missing months"

# The following loops check for the continuity of some variables we create in order to
# monitor the data.

((yearsnotok=0))
((yearsok=0))
cat temperatures_clean.csv | while IFS="," read f1 f2 f3 f4;
do
if [[ $f2 == 01 && $f3 != "NA" ]]; then
	((var=11))
elif [[ $f2 == 01 && $f3 == "NA" ]]; then
	((var=12))
elif [[ $f2 != 12 && $f3 != "NA" && $f2 != 01 ]]; then
	(( var=var-1 ))
elif [[ $f2 == 12 && $f3 == "NA" ]]; then
	(( yearsnotok=yearsnotok+1 ))
	echo "$f1, $var"
	sed -i "/$f1/d" temperatures_clean.csv
elif [[ $f1 != 2015 && $f2 == 12 && $f3 != "NA" ]]; then
	(( var=var-1 ))
	if [[ $var != 0 ]]; then
		echo "$f1, $var"
		sed -i "/$f1/d" temperatures_clean.csv
		(( yearsnotok=yearsnotok+1 ))
	elif [[ $var == 0 ]]; then
		(( yearsok=yearsok+1 ))
	fi
elif [[ $f1 == 2015 && $f2 == 12 && $f3 != "NA" ]]; then
	(( yearsok=yearsok+1 ))
	echo " "
	echo "2. Data after analysis:"
	echo " "
	echo "Years with proven complete temporal series: $yearsok"
	echo "Years with proven incomplete temporal series: $yearsnotok"
elif [[ $f1 == 2015 && $f2 == 12 && $f3 == "NA" ]]; then
        (( var=var-1 ))
        (( yearsnotok=yearsnotok+1 ))
        echo "$f1, $missing"
	echo " " 
        echo "2. Data after analysis:"
        echo " "
        echo "Years with proven complete temporal series: $yearsok"
        echo "Years with proven incomplete temporal series: $yearsnotok"
fi
done 

