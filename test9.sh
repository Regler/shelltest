#!/bin/bash
if [ $# == 0 ]
then 
	filesh=`find . -name "*.sh"`
	for file in $filesh
	do
		echo -n "$file  "
		ls -l $file | awk '{print $1}'
	done
else 
	for dir in $@
	do
		filesh=`find $dir -name "*.sh"`
		for file in $filesh
		do
			echo -n "$file  "
			ls -l $file | awk '{print $1}'
		done
	done
fi

