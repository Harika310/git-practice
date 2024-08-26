#!/bin/bash

USERID=$(id -u)
# echo "user id is: $USERID"
if [ USERID -ne 0 ]
then
echo "proceed the script with root privelages"
exit 1
fi