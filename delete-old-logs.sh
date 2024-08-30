#!/bin/bash

SOURCE_DIR=/home/ec2-user
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

FILES=$(find $SOURCE_DIR -name "*.txt")
echo "Files: $FILES"

