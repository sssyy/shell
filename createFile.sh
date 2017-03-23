#!/bin/bash
path=./createHtml
[ -d $path ]  || mkdir $path
for i in `seq 10`
	do
		char=`echo $RANDOM | md5sum | cut -c 2-11 | tr [0-9] [a-j]`
		touch $path/${char}.html
	done
