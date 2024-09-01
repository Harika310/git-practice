#!/bin/bash

# SOURCE_DIR=/home/ec2-user/logs
# R="\e[31m"
# G="\e[32m"
# N="\e[0m"
# Y="\e[33m"

# FILES=$(find ${SOURCE_DIR} -name "*.txt")
# echo "Files: $FILES"

FILEPATH=$1

USAGE(){
    echo -e "$R USAGE:: $N 02-convert_rc.sh <filepath>"
}

if [ $# -eq 0 ]  # check the no of arguments
then 
   USAGE
fi

for files in " "/*
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



