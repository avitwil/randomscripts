#!/bin/bash

clear

read -p "press Enter key to continue"
echo ' --------example for "while" loop--------'
echo " while the number is grater then 50 do"
echo "---------------------------------------"
read -p "please enter number : " NUM
while [ $NUM -gt 50 ]
do
   echo "the number is $NUM "
   read -p "please enter number : " NUM
done
clear



read -p "press Enter key to continue"
echo " "
echo " "
echo " "
echo '-------example for "until" loop---------'
echo "do until the number is grater then 50"
echo "----------------------------------------"
read -p "please enter number : " NUM1
until [ $NUM1 -gt 50 ]
do
   echo "the number is $NUM1 "
   read -p "please enter number : " NUM1
done

clear






read -p "press Enter key to continue"
echo " "
echo " "
echo " "
echo '-------example 1 for "for" loop---------'
echo "for each value in the list (1 to 5) do"
echo "----------------------------------------"

touch for1.txt
read -p "enter name: " NAME
for I in {1..5}
do
   echo "this is the $I time"
   echo $NAME >>for1.txt
   read -p "enter name: " NAME
done

clear
read -p "press Enter key to continue"
echo " "
echo " "
echo " "
echo '-------example 2 for "for" loop---------'
echo "for each name that in file for1.txt do"
echo "----------------------------------------"
for I in $( cat for1.txt )
do
   echo "the name is : " $I
   sleep 1
done
rm for1.txt




