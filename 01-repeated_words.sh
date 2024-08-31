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

# while IFS= read -r line
# do
#     echo "$line"
# done < "$FILEPATH"

count=$(cat "$FILEPATH" | tr -s ' ' '\n' | sort )
repeated_words=$(echo "$count" | uniq -d)
echo "$repeated_words"









