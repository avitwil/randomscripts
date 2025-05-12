#!/bin/bash
 
 
clear
read -p 'press Enter to start '
clear
echo "--------------------------------------------------"
echo 'this is an example for "continue" command in loops'
echo "--------------------------------------------------"
echo " "
read -p "write the number you Don't want to show ( from 1 to 10 ): " NUM
for I in {1..10}

do
   if [ $I -eq $NUM ]
     then
         continue
    fi
   echo $I
   sleep 1
done
read -p "press Enter for the next example"


clear
read -p "press Enter to start"
clear
echo "--------------------------------------------------"
echo 'this is an example for "break" command in loops'
echo "--------------------------------------------------"
echo " "
read -p "write the number you want the loop to stop ( from 1 to 10 ): " NUM
for I in {1..10}

do
   if [ $I -eq $NUM ]
     then
         break
    fi
   echo $I
   sleep 1
done
echo "done"
