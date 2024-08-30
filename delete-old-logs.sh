#!/bin/bash

SOURCE_DIR=/home/ec2-user
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

FILES=$(find $SOURCE_DIR -name "*.txt")
echo "Files: $FILES"

# dont use line, it is reserverd word
while IFS= read -r file #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
# do
#     echo "Deleting file: $file"
#     rm -rf $file
# done <<< $FILES