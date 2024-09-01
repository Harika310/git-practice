#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

FILES=$(find ${SOURCE_DIR} -name "*.txt")
echo "Files: $FILES"

while read -r file
do
  echo "$file"
done < $SOURCE_DIR

# read -p "Enter the search string:"
# read -p "Enter the replace string:"
# for f in Files
# do
# echo "Processing $f.."
# grep 'ram' | sed -i 's/ram/anvesh/g' "$f"
# done