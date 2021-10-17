#/bin/bash

val=$1

if [ -z $val ]; then
	echo "null string"
elif [[ $val == "dog" || $val == "cat" ]]; then
	echo "I have a pet"
else
	echo "I have no pet"
fi
