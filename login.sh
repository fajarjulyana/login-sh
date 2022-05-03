#!/bin/bash
clear
echo "\t\t Example Login\n"
echo "\t Login Please" | lolcat
echo "Enter Your Username"
read a
echo "Enter Your Password"
read b
if [ $a == `base64 -d menu/.user.info` ] && [ $b == `base64 -d menu/.pass.info` ]
then
   echo "Login Success" 
   menu/menu.sh
   echo `date` $a $b | base64 >> .log
elif [ $a == `base64 -d menu/.user.info` ] && [ $b == $b ]
then
   echo "Wrong Password" 
else
   echo "Username not found" 
fi
