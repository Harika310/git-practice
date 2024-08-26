#!/bin/bash

USERID=$(id -u)
# echo "user id is: $USERID"
if [ $USERID -ne 0 ]
then
echo "proceed the script with root privelages"
exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
echo "mysql is not installed, going to install"
dnf install mysql -y 
else
echo "mysql is already installed"
fi
