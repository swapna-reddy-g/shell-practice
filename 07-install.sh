#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/home/ec2-user/shell-logs
LOGS_FILE="$LOGS_DIR/$0.log"

# Check root access or not

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

# $1 --> Name of installation
# $2 --> exit code

VALIDATE(){
    if [ $2 -ne 0 ]; then
        echo "Installing $1 has Failed, Please try again"
    else
        echo "Installing $1 is Success"
    fi
}
dnf list installed mysql &>> LOGS_FILE

if [ $? -ne 0 ]; then
    echo "Installing MySQL"
    dnf install mysql -y
    VALIDATE MYSQL $?
else
    echo "MYSQL is already installed"
fi

dnf list installed nginx &>> LOGS_FILE
if [ $? -ne 0 ]; then
    echo "Installing NGINX"
    dnf install nginx -y
    VALIDATE NGINX $?
else
    echo "NGINX is already installed"
fi