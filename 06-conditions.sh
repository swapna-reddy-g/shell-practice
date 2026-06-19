#!/bin/bash

NUM=$1

if [$NUM -ge 20]; then
    echo "$NUM is Greater than 20"
else
    echo "$NUM is less than 20"
fi