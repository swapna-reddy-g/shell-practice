#!/bin/bash

SOURCE_DIR=$1
DAYS=${2:-14}  # if $2 is empty, it'll be set to 14

if [ -z $SOUCE_DIR ]; then
    echo -e "ERROR:: Missing Parameters"
    echo "USAGE: $0 <source-dir> [days(optional default to 14)]"
    exit 1
fi

if [ ! -d $SOURCE_DIR ]; then
    echo "ERROR:: Directory: $SOURCE_DIR does not exists"
    exit 1
fi

echo "Scanning $SOURCE_DIR for log files older than 14 days"
FILES_TO_BE_DELETED=$(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS)

if [ -z "$FILES_TO_BE_DELETED" ]; then
    echo "No log files older than 14 days found"
    exit 0
fi

while IFS= read -r FILE
do
    echo "Files to be deleted: $FILES_TO_BE_DELETED"
    rm -f "$FILE"
    echo "File $FILE deleted"
done <<< "$FILES_TO_BE_DELETED"

#  <    for one file
#  <<<  for variables (multiple files)
