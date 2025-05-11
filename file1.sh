#!/bin/bash
touch file1.txt
# Creating a temporary table in my home work data base 
mysql -u root -D home_work -e "create table systemUsers (User_ID varchar(50), User_Name varchar(50), Group_ID varchar(50));"

# taking records from /etc/passwd one by one (only the user id ,user name and group id)
for RECORD in $( awk -F: '{print $1":"$3":"$4}' /etc/passwd )
  do
    Uname=$( awk -F: '{print $1}' <<< $RECORD )
    UserID=$( awk -F: '{print $2}' <<< $RECORD )
    GroupID=$( awk -F: '{print $3}' <<< $RECORD )

# checking each record if it is a user (not root or system users)
    if [[ $UserID -le 999 || $UserID -gt 9999 || -z $UserID ]]
    then
# skiping the record i dont need
    continue
    fi

# saving the record i do want to show to a temporary file (will be deleted in the end of the script)
    echo ' ("'"$UserID"'","'"$Uname"'","'"$GroupID"'")' >>file1.txt
done

# taking all records from my temp flie 
for REC in $( cat file1.txt )
   do
# inserting each record to the temporary table i made
mysql -u root -D home_work -e "INSERT INTO systemUsers (User_ID, User_Name, Group_ID) values $REC;"
   done

# printing the table to the screen
mysql -uroot -Dhome_work -e "SELECT * FROM systemUsers;" 

# deleting my temporary file and table i made
rm file1.txt
mysql -u root -D home_work -e "drop table systemUsers;"

