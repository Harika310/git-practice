#!/bin/bash

FILEPATH=/home/ec2-user/abc.txt

USAGE(){
    echo -e "$R USAGE:: $N 02-convert_rc.sh <filepath>"
}

if [ $# -eq 0 ]  # check the no of arguments
then 
   USAGE
fi

# if [ -f $FILEPATH ]
# then
#         echo "File exist"
# else
#         echo "File Doesn't exit"
# fi
echo "Please enter your data:"
read  DATA

echo "Before data is: $DATA"

 echo "After converting data" 
cols=$(head -2 "$FILEPATH" | wc -l)
for i in $(seq 1 "$cols")
do
    echo $(cut -d ' ' -f "$i" "$FILEPATH")
done
