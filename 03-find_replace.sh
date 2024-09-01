#!/bin/bash

FILEPATH1=/home/ec2-user/logs


# USAGE(){
#     echo -e "$R USAGE:: $N 03-find_replace.sh <filepath1>"
# }

# if [ $# -eq 0 ]  # check the no of arguments
# then 
#    USAGE
# fi

if [ -f $FILEPATH1 ]
then
        echo "File exist"
else
        echo "File Doesn't exit"
fi

FILES=$(find ${FILEPATH1} -name "*.txt")
echo "Files: $FILES"

for file in $FILEPATH/*.txt
 do
    sed -i 's/ram/anvesh/g' "$file"
done