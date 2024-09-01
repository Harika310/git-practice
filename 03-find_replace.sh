#!/bin/bash

FILEPATH1=$1


USAGE(){
    echo -e "$R USAGE:: $N 03-find_replace.sh <filepath1>"
}

if [ $# -lt 2 ]
then
    USAGE
    exit 1
fi

if [ -f $FILEPATH1 ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
fi

for file in $FILEPATH/*.txt
 do
    sed -i 's/ram/anvesh/g' "$file"
done