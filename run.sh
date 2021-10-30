# This file runs the files we created before. You will only need to run it in order to get the output.

#!/usr/bin/bash

# 1. Data preprocessing

chmod +x cleaning
./cleaning.sh

# 2. Completeness analysis

chmod +x completeness
./completeness.sh

# 3. Year/decade analysis

chmod +x yeartoyear.awk
./yeartoyear.awk temperatures_clean.csv

# 4. Interval analysis

chmod +x intervals.sh
./intervals.sh
