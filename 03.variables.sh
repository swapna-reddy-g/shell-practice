#!/bin/bash

TIMESTAMP=$(date)
START_TIME=$(date +%s)

sleep 10s

echo "TIme is $TIMESTAMP"

echo "Please Enter your UserName:: "
read USER_NAME

echo "Your User Name is $USER_NAME"

echo "Please Enter your Password:: "
read -s Password

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))
echo "Total Time : $TOTAL_TIME"
