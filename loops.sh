#!/bin/bash

# for i in {0..10}
# do
#  echo "$i"
#  done

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


CHECK_ROOT(){

if [ $USERID -ne 0 ]
then
echo " please run the script with root preveliges"
exit 1
fi
}

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
    echo -e "command is ...$R failure"
    else
    echo -e "command is ...$G success"
    fi
}

CHECK_ROOT

# refers to all arguments passed to it
for package in $@
do
   dnf list installed $package
   if [ $? -ne 0 ]
   then
   echo "$package is not istalled, going to install"
   dnf install $package -y
   VALIDATE $? "Installing $package"
   else
   echo -e "$Y $package is already installed"
   fi
   done


