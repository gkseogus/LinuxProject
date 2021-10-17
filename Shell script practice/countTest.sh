#!/bin/bash

count=0

while [ $count -lt 10 ]; do
	echo "count: $count"
	let count=count+1
done
