#!/bin/bash

USERID=$(id -u)

# Check root access or not

if [ $USERID -ne 0 ]; them
    echo "Please run this script with root access"
fi

echo " I am Continuing"