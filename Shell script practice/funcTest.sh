#!/bin/bash
val=10

function foo(){
	local val=7
	echo "hello $1"
	echo "val : $val"
}

foo "kim"
