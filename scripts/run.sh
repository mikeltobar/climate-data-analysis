#!/usr/bin/bash

# 1. Data preprocessing

chmod +x cleaner.sh
./cleaner.sh

# 2. Exploratory data analysis

chmod +x eda.sh
./eda.sh

# 3. Year/decade analysis

chmod +x analysis_1.awk
./analysis_1.awk temperatures_clean.csv

# 4. Interval analysis

chmod +x analysis_2.sh
./analysis_2.sh > results.txt 
