#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ]
then 
echo "Please run the script with root privelages"
exit 1
fi 

dnf list installed git