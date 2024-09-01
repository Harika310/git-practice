#!/bin/bash

FILEPATH=$1

USAGE(){
    echo -e "$R USAGE:: $N 01-repeated_words.sh <filepath>"
}

if [ $# -eq 0 ]  # check the no of arguments
then 
   USAGE
fi

# if [ -f $FILEPATH ]
# then
#         echo "File exist"
# else
#         echo "File Doesn't exit"
# fi

count=$(cat "$FILEPATH" | tr -s ' ' '\n' | sort -nr)
repeated_words=$(echo "$count" | uniq -c| head -n 5 | awk '{print $2 " - " $1}')
echo "$repeated_words"


