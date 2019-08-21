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


for dir in $@
do
	filech=`find $dir -name "*.[ch]"`
	sum=0
	for file in $filech
	do
		sum=$[ $sum + `cat $dir/$file | wc -l` ]
	done
	echo "$dir 的行数为 ： $sum" >>$writename
done
echo "写入文件  $writename 成功"
