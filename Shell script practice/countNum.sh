#!/bin/bash

read -p "NUM: " val1
read -p "NUM: " val2
read -p "NUM: " val3

if [[ $val1 -ge $val2 && $val1 -ge $val3 ]]; then
	echo "MAX: $val1"
elif [[ $val2 -ge $val1 && $val2 -ge $val3 ]]; then
	echo "MAX: $val2"
else
	echo "MAX: $val3"
fi
