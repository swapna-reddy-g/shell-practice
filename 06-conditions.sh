#!/bin/bash

NUM=$1

if [ $NUM -gt 20 ]; then
    echo "$NUM is > 20"
elif [ $NUM -eq 20 ]; then
    echo "$NUM = 20"
else
    echo "$NUM is < 20"
fi