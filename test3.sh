#!/bin/bash
filename=$1
index=0
if [ -f $filename ]
then
	for (( i=1;i <= `cat $filename | wc -l `;  i += 5 ))
	do
		s=$[ i + 4 ]
		index=$[ index + 1 ]
		sed -n "$i,${s}p" $filename >test3/${index}.txt
	done
else
	echo "不是文件"
fi
