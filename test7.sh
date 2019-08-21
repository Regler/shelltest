#!/bin/bash
flag=0
if [ $# -eq 0 ]
then 
	file777=`find . -maxdepth 1 -perm  777 -type f`
	for file in $file777
	do
		flag=1
		chmod 754 $file
		echo -n "$file  "
	done
else 
	for dir in $@
	do
		for file in `find  $dir -maxdepth 1 -type f -perm 777`
		do 
			flag=1
			chmod 754 $file
			echo -n "$file  "
		done
	done
fi
if [ $flag == 1 ]
then
	echo  "   这些文件有危险已修改权限为754"
fi
