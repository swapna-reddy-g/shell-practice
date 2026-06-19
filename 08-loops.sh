#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date "+%d-%m-%y %H:%M:$S")
R="\e[31m"
G="\e32m"
Y="\e33m"
N="\e0m"

# Check if root access or not
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "$TIMESTAMP [ERROR] Installing $1 has $R Failed $N" | tee -a $LOGS_FILE
    else
        echo "$TIMESTAMP [INFO] Installing $! is $G Success $N" | tee -a $LOGS_FILE
    fi
}

for package in $@
do
    echo "Installing $package"
    dnf list installed $package
    if [ $? -ne 0 ]; then
        dnf install $package -y | tee -a $LOGS_FILE
        VALIDATE "INstalling $package" $?
    else
        echo "$package $Y already installed $N"
    fi
done