#!/bin/bash

FILEPATH=/home/ec2-user
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ -f $FILEPATH ]
then
    echo -e "$FILEPATH $G Exists $N"
else
    echo -e "$SFILEPATH $R does not exist $N"
    exit 1
fi

FILES=$(find $FILEPATH -name "*.txt" -mtime +14)
echo "Files: $FILES"


# while IFS= read -r file #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
# do
#     echo "Deleting file: $file"
#     rm -rf $file
# done <<< $FILES

















# FILEPATH=$1

# USAGE(){
#     echo -e "$R USAGE:: $N 01-repeated_words.sh <filepath>"
# }

# if [ $# -eq 0 ]  # check the no of arguments
# then 
#    USAGE
# fi

# if [ -f $FILEPATH ]
# then
#         echo "File exist"
# else
#         echo "File Doesn't exit"
# fi

# count=$(cat $FILEPATH | grep $FILEPATH | cut -d " " -f1 | uniq -c)
# echo "$count"

