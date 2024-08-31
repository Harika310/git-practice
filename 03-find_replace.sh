#!/bin/bash

FILEPATH1=$1


USAGE(){
    echo -e "$R USAGE:: $N 01-repeated_words.sh <filepath1>"
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


FILES=$(find $FILEPATH1 -name "*.txt" -mtime +14)

echo "Files: $FILES"