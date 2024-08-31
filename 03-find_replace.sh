#!/bin/bash

FILEPATH1=$1
FILEPATH2=$2

USAGE(){
    echo -e "$R USAGE:: $N 01-repeated_words.sh <filepath1> <filepath2>"
}

if [ $# -eq 0 ]  # check the no of arguments
then 
   USAGE
fi

if [ -f $FILEPATH1 ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
fi

if [ -f $FILEPATH2 ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
fi

while IFS= read -r line
do
    echo "$line"
done < "$FILEPATH1"