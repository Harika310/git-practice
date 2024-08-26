#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "Please run the script with root privelages"
exit 1
fi 

dnf list installed git

if [ $? -ne 0 ]
then
echo " git is not installed, going to install"
dnf install git -y
else
echo "git already installed"
fi