#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

FILES=$(find ${SOURCE_DIR} -name "*.txt")
echo "Files: $FILES"

echo "files before replacement"

while read -r file
do
  echo "$file"
done <<< $FILES

echo "files after replacement"
for f in Files
do
grep 'ram' | sed -i 's/anvesh/harika/g' "$f"
done