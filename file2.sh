#!/bin/bash
touch userf.tmp
while [ $# -gt 0 ]
do
 case "$1" in
     -u)
            export Uname="$2"
            echo $Uname >>userf.tmp
            shift 2
            ;;

    *)
    echo  "Unrecognized option: $1"
    echo  "type --help for more info"
    usage 1
    esac
done


for REC in $( cat userf.tmp )
  do
    deluser $REC
    rm -r /home/$REC
done
rm userf.tmp
bash file1.sh

