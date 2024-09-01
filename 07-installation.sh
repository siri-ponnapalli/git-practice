#!/bin/bash
USERID=$(id -u)
echo "USER ID is: $USERID"
if [ $USERID -ne 0]
then
    echo "Please run this script with root priveleges"
fi

dnf install git -y
# dnf install git -y
ls -ltr
lsdsdg -ltr
ls -l

