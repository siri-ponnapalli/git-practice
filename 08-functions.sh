#!/bin/bash
USERID=$(id -u)
#echo "USER ID is: $USERID"




VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo "$2is...FAILED"
       exit 1
    else
       echo "$2 is...SUCCESS"
       exit
       fi
}
if [ $USERID -ne 0 ]
then
   echo "Please run this script with root priveleges"
   exit 1


dnf list installed git 

VALIDATE $? "Listing Git"




# if [ $? -ne 0]
# then 
#     echo "Git is not installed,going to install it.."
#     dnf install git -y
#     if [ $? -ne o ]
#     then 
#        echo "Git installation is not sucess...check it"
#        exit 1
# else 
#    echo "Git installation is sucess"
# fi

# else 
#    echo "Git is already installed/ noting to do.."
# fi


