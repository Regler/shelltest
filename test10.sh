#!/bin/bash
read -p "请输入一个数  " num

expr  $num + 10  &> /dev/null  
if [ $? -eq 0 ]
then
	if [ $num -gt 0 ] 
	then
    echo "$num is number" 
	echo  $num 的因子为
	for(( i=2; i <= $num; i++ ))
	do
		if [ $[ $num % $i ] == 0 ]
		then
		echo $i
		num=$(($num / $i))
		i=$(($i - 1 ))
		fi
	done
	else 
	echo "输入的是负数和0"
	fi
else 
	echo "$num 不是数字"
fi
