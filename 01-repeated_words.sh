#!/bin/bash

FILEPATH=$1
SEARCH_WORDS=$2

USAGE(){
    echo -e "$R USAGE:: $N 01-repeated_words.sh <filepath> <searchwords>"
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

count=$(cat $FILEPATH | grep $SEARCH_WORDS | wc -l)
echo "$SEARCH_WORDS"=" $count"