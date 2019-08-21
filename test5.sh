#!/bin/bash
sum=0
for i in $@
do
	expr $i + 10 &> /dev/null  
	if [ $? -eq 0 ]
	then  
	pow2=$(($i * $i))
	printf "%d 的平方为 %d\n" $i $pow2
	sum=$(($sum + $pow2))
	else
	echo $i 不是数字
	fi
done
echo $sum


