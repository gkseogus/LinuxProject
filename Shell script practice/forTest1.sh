#!/bin/bash
exec 2> /dev/null

count=0

for file in $@
do
	if [ -f $file ]; then
 		wc -l $file
		 let count=count+1
	elif [ -d $file ]; then
		for subfile in $file/*
		do
			wc -l $subfile 
			let count=count+1
		done
	fi
done >> result2.txt

echo "Total count = $count" 
