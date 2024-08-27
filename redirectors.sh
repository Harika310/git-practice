#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIME_STAMP=$(date +Y-%m-%d-%H-%M-%S)
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log
mkdir -p $LOGS_FOLDER

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


CHECK_ROOT(){

if [ $USERID -ne 0 ]
then
echo -e "$R please run the script with root priveleges $N" &>>LOG_FILE
exit 1
fi
}

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
    echo -e "$2 is ...$R failed" &>>LOG_FILE
    else
    echo -e "$2 is ...$G success" &>>LOG_FILE
    fi
}

CHECK_ROOT

# refers to all arguments passed to it
for package in $@
do
   dnf list installed $package &>>LOG_FILE
   if [ $? -ne 0 ]
   then
   echo "$package is not istalled, going to install" &>>LOG_FILE
   dnf install $package -y &>>LOG_FILE
   VALIDATE $? "Installing $package"
   else
   echo -e "$Y $package is already installed" &>>LOG_FILE
   fi
done