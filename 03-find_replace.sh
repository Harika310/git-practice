#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

FILES=$(find ${SOURCE_DIR} -name "*.txt")
echo "Files: $FILES"

for files in "$SOURCE_DIR"/*
do
  echo "$files"
done

echo "files before replacement"

# while read -r file
# do
#   echo "$file"
# done <<< $FILES

echo "Replacing a word anvesh with harika"
echo "files after replacement"
for f in Files
do
grep '' | xargs sed 's/anvesh/harika/g' "$f"
echo "Replacement done"
done



