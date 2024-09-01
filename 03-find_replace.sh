#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ -d $SOURCE_DIR ]
then
    echo -e "$SOURCE_DIR $G Exists $N"
else
    echo -e "$SOURCE_DIR $R does not exist $N"
    exit 1
fi

FILES=$(find ${SOURCE_DIR} -name "*.txt")
echo "Files: $FILES"


while IFS= read -r file #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
do
    grep ':s/ram/anvesh/g' "$file"
    
done <<< $FILES

# for FILES in $SOURCE_DIR/*.txt
#  do
#     grep ':s/ram/anvesh/g' "$FILES"
# done