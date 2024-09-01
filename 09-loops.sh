#!/bin/bash
USERID=$(id -u)
#echo "USER ID is: $USERID"

R="\e[31m"
G="\e[32m"
N="\e[0m"


VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo "$2is... $R FAILED $N"
       exit 1
    else
       echo "$2 is... $G SUCCESS $N"
       exit
       fi
}

CHECK_ROOT() {
    if [ $USERID -ne 0 ]
    then
    echo "Please run this script with root priveleges"
    exit 1
    fi
}

CHECK_ROOT

for package in $@
do

  dnf list installed $package
  if [ $? -ne 0 ]
  then
    echo "$package is not installed,going to install it.."
    dnf install $package -y
    if [ $? -ne o ]
    then 
       echo "$package installation is not sucess...check it"
       exit 1
    else 
       echo "$package installation is sucess"
    fi

else 
   echo "$package is already installed/ noting to do.."
 fi

done