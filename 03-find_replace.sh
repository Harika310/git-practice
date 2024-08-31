#!/bin/bash

FILEPATH1=/home/ec2-user


# USAGE(){
#     echo -e "$R USAGE:: $N 01-repeated_words.sh <filepath1>"
# }

# if [ $# -lt 2 ]
# then
#     USAGE
#     exit 1
# fi

if [ -f $FILEPATH1 ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
fi


FILES=$(find $FILEPATH1 -name "*.txt" -mtime +14)

echo "Files: $FILES"