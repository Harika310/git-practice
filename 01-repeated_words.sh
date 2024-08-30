#!/bin/bash

FILEPATH=$1
SEARCH_WORD=$2

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

cat $FILEPATH | awk -F " " '{print $NF} | cut -d  " " -f1 | uniq -d
# echo "$SEARCH_WORD"=" $count"

# echo "$count"