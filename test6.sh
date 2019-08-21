#!/bin/bash
filetxt=`find . -name "*.txt"`
sum=0
for file in $filetxt
do
	if [ ! -s $file ]
	then 
		sum=$[ $sum + 1 ]
		rm -rf $file
	fi
done
echo $sum
