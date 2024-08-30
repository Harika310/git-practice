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

# count=$(cat $FILEPATH | grep $FILEPATH | awk -F " " '{print $NF}' | cut -d " " -f1 | uniq -d)
# echo "$count"

count= $(cat "$FILEPATH" | tr -s '[:space:]' '\n' | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5)
echo "$count"
