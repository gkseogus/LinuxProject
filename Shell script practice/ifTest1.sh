#!/bin/bash

if [ $1 -lt $2 ]; then
	echo "$1 < $2"
else 
	echo "$1 >= $2"
fi
