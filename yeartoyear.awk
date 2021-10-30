# This file uses awk to check the changes in yearly mean temperatures.

#!/usr/bin/awk -f

BEGIN {FS=","
print("______________________")
print(" ")
print("Year-to-year mean temperature study")
print("______________________")
print(" ")
}
NR>1 {sum+=$3
sumdec+=$3
}
{
	if($2=="12") {
	year[$1]=sum/12	
	sum=0
	dec++
	if(dec==10) {
	dec=0
	numdec++
	decade[numdec]=sumdec/144
	print "Decade ", numdec ,"| Mean temperature ", sumdec/144, "| Change ", decade[numdec]-decade[numdec-1]
	sumdec=0
} 
}
} END { for (i in year) {
	if(year[i]<year[i-1]) {
	decrease++
	mean_decrease=(mean_decrease+(year[i]-year[i-1]))/decrease 
} else if(year[i]>year[i-1]) {
	increase++
	mean_increase=(mean_increase+(year[i]-year[i-1]))/increase
} else if(year[i]==year[i-1]) {
	stable++
} 
}
	print(" ")
	print("__________________________")
	print(" ")
	print("Year-to-year mean increase/decrease")
	print("__________________________")
	print(" ")
	print("Years where mean increased: " increase, ", mean increase: "mean_increase)
	print("Years where mean decreased: " decrease, ", mean decrease: "mean_decrease)
	print("Years without mean change: " stable)
	ratio=(mean_increase/-(mean_decrease))
	print("Increase ratio: " ratio)
}

