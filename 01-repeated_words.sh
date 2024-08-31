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

#count=$(cat "$FILEPATH" | tr -s ' ' '\n' | sort )
#repeated_words=$(echo "$count" | uniq -c)
#echo "$repeated_words"

word_count=$(tr -s '[:space:]' '\n' < "FILEPATH" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]' | grep -v '^$' | sort | uniq -c | sort -nr)
echo "Top 5 Most Frequent Words:"
echo "$word_count" | head -n 5 | awk '{print $2 " - " $1 " occurrences"}'






