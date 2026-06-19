#!/bin/bash

NUM1=10
NUM2=30

SUM=$(($NUM1+$NUM2))

echo "sum is $SUM"

# Arrays
MOVIES=("RRR", "Bahubali", "varanasi")

echo "Movies ${MOVIES[@]}"
echo "Movie 1 ${MOVIES[0]}"
echo "Movie 2 ${MOVIES[1]}"
