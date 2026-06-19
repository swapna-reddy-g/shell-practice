#!/bin/bash

NUM=$1

if [$NUM -ge 20]; then
    echo "$NUM is >20"
else
    echo "$NUM is <=20"
fi