#!/bin/bash

USERID=$(id -u)

# Check root access or not

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi
dnf list installed mysql

if [ $? -ne 0 ]; then
    echo "Installing MySQL"
    dnf install mysql -y
else
    echo "MYSQL is already installed"
fi

if [ $? -ne 0 ]; then
    echo "Installation Failed, Please try again"
else
    echo "Installation Success"
fi

