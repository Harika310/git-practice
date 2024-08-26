#!/bin/bash

USERID=$(id -u)
# echo "user id is: $USERID"

R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_ROOT()
{
  if [ $USERID -ne 0 ]
then
echo "proceed the script with root privelages"
exit 1
fi
}


VALIDATE()
{
if [ $1 -ne 0 ]
then
echo "$2 is ..$R failed $N"
exit 1
else
echo "$2 is ..$G success $N" 
fi
}


CHECK_ROOT

dnf list installed mysql
# $?= previous command

if [ $? -ne 0 ]
then
  echo "mysql is not installed, going to install"
   dnf install mysql -y 
   VALIDATE $? "Installing mysql"
#     if [ $? -ne 0 ]
#     then 
#             echo "mysql installation is failure"
#         exit1
#     else
#          echo "mysql installation is success"
#          fi
else
      echo "mysql is already installed"
fi
