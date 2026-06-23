#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=$(3:-14)

if [ -z "$SOUCE_DIR" ] || [ -z "$DEST_DIR" ]; then
    echo "Either Source or Detination Directory empty"
    echo "Usage:: $0 [csource_dir] [dest_dir] [days:default 14]"
    exit 1
fi

if [ -d "$SOURCE_DIR" ]; then
    echo "Source Directory: $SOURCE_DIR doesn't exists"
fi

if [ -d "$DEST_DIR" ]; then
    echo "Source Directory: $DEST_DIR doesn't exists"
fi
