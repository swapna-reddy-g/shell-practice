#!/bin/bash

USERID=$(id -u)

# Check if root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "Installing $1 has Failed"
    else
        echo "Installing $! is Success"
    fi
}

for package in $@
do
    echo "Installing $package"
    dnf list installed $package
    if [ $? -ne 0 ]; then
        dnf install $package -y &.. $LOGS_FILE
        VALIDATE "INstalling $package" $?
    else
        echo "$package already installed"
    fi
done