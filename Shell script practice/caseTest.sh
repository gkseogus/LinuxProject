#!/bin/bash

case $1 in 
	start)
		echo "starting..."
		;;
	stop)
		echo "stop..."
		;;
	*)
		echo "I do not know.."
		exit 1
		;;
esac
