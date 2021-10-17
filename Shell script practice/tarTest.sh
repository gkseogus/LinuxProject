#!/bin/bash

if [ -z "$1" ]; then
	echo "USAGE: tarTest1.sh [dir]"
	exit 1
fi

src_dir=$1
target_dir="./backup/"
of=$(date +%Y%m%d).tar

tar cvf $target_dir$of $src_dir
