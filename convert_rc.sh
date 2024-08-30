#!/bin/bash

FILEPATH=$1

USAGE(){
    echo -e "$R USAGE:: $N convert.sh <filepath>"
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

n_cols=$(head -1 "$FILEPATH" | wc -w)
for i in $(seq 1 "$n_cols"); do
    echo $(cut -d ' ' -f "$i" "$FILEPATH")
done