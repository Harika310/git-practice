#!/bin/bash

USERID=$(id -u)
# echo "user id is: $USERID"

VALIDATE()
{
if [ $1 -ne 0 ]
then
echo "command is ..failed"
exit 1
else
echo "command is ..success" 
fi
}

if [ $USERID -ne 0 ]
then
echo "proceed the script with root privelages"
exit 1
fi


dnf list installed mysql
# $?= previous command
VALIDATE $?

# if [ $? -ne 0 ]
# then
#   echo "mysql is not installed, going to install"
#    dnf install mysql -y 
#     if [ $? -ne 0 ]
#     then 
#             echo "mysql installation is failure"
#         exit1
#     else
#          echo "mysql installation is success"
#          fi
# else
#       echo "mysql is already installed"
# fi
