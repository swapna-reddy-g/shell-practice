#!/bin/bash

COUNTRY=INDIA

echo "Country: $COUNTRY"
echo "PID of script-01:$$"
# sh 10.script02.sh        # different pid
source ./10.script02.sh    #same pid