#!/bin/bash

FILEPATH=$1
FILEPATH=$2

USAGE(){
    echo -e "$R USAGE:: $N 01-repeated_words.sh <filepath> <filepath>"
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

while IFS= read -r line
do
    echo "$line"
done < "$FILEPATH"