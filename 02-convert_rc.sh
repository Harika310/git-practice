#!/bin/bash

FILEPATH=/home/ec2-user/abc.txt

if [ -f $FILEPATH ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
        exit 1
fi


echo "Please enter your data:"
read  DATA

echo "Before data is: $DATA"

#  echo "After converting data" 
cols=$(head -2 "$FILEPATH" | wc -w)
for i in $(seq 1 "$cols")
do
    echo $(cut -d ' ' -f "$i" "$FILEPATH")
done
