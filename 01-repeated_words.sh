#!/bin/bash

FILEPATH=$1

USAGE(){
    echo -e "$R USAGE:: $N 01-repeated_words.sh <filepath>"
}

if [ $# -eq 0 ]  # check the no of arguments
then 
   USAGE
fi

if [ -f $FILEPATH ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
fi

count=$(cat $FILEPATH | grep $FILEPATH | wc -w | cut -d " " -f1 | uniq -c)
echo "$count"

