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
    echo -e "$R USAGE:: $N 03-find_replace.sh <filepath>"
}

if [ $# -eq 0 ]  # check the no of arguments
then 
   USAGE
fi

for files in "$FILEPATH"/*
do
  echo "$files"
done

echo "files before replacement"
for i in $( cat $a/b/c.txt )
do
echo " Contents of the files "  > $t1/t2/content.txt

# echo "Replacing a word anvesh with harika"
# echo "files after replacement"
# for f in Files
# do
# grep '' | xargs sed 's/anvesh/harika/g' "$f"
# echo "Replacement done"
# done
