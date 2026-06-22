#!/bin/bash

while IFS= read -r line    #Internal Field Seperator
do
    echo "$line"
done < 02-conversation.sh