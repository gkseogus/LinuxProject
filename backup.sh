#!/bin/bash 
count=0
while :
do

#Check the number of executions.
let count=count+1
echo "Compressed execution count : $count" 

#Check the compressed time.
echo "Run time : $(date +%Y-%m-%d_%H:%M)"

#Find the file location.
for file in /home/fbznffldj998/$*/*
do
	echo "$file"
	echo "------------------------------------"
done
echo "===================================="

#Whether to execute the compression command or not.
if [ -z "$*"  ]; then
	echo "USAGE: tar.sh [dir]" 
	exit 1
else
	echo "$* backup succeeded."
fi

src_dir=$*   #The directory to be compressed
target_dir="./backup/"   #this backupfile dir
of=$(date +%m-%d_%H:%M).tar    #Compressed time point.

#FInd the changed file within 30 minutes.
fin=$(find /home/fbznffldj998/$* -type f -mmin -30)

if [ fin ]; then
	tar cvf $target_dir$of $fin$src_dir
	echo "===================================="
else
	echo " not find dir"
	echo "===================================="
fi
sleep 1800  #Repeat compression for 30 minutes.
done
