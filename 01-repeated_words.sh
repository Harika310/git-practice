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

count=$(cat "$FILEPATH" | tr -s ' ' '\n' | sort | head -n 5)
repeated_words=$(echo "$count" | uniq -c)
echo "$repeated_words"


