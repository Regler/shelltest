#!/bin/bash
while :
do
read -p "请输入写入的文件名  " writename
if [ -f $writename ]
	then
	echo "wirtename已存在，请重新输入"
else
	break
fi 
done



if [ $# == 0 ]
then 
	filech=`find . -name "*.[ch]"`
	sum=0
	for file in $filech
	do
		echo "$file 的行数为  ：`cat $file | wc -l` " >>$writename
		sum=$[ $sum + `cat $file | wc -l` ]
	done
	echo "当前目录.c和.h文件的总的行数为 ： $sum" >>$writename

else

for dir in $@
do
	filech=`find $dir -name "*.[ch]"`
	sum=0
	for file in $filech
	do
		echo "$file 的行数为  ：`cat $file | wc -l` " >>$writename
		sum=$[ $sum + `cat $file | wc -l` ]
	done
	echo "$dir .c和.h文件的总行数为 ： $sum" >>$writename
done
fi
echo "写入文件  $writename 成功"
