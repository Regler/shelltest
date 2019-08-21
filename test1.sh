#!/bin/bash	
	read -p "请输字符串  " str1
	while :
	do
	read -p "请输入命令 " cmd 
		if [ $cmd == "lower" ]
			then 
			echo  $str1 | tr "[:upper:]" "[:lower:]" 
		elif [ $cmd == "upper" ]
			then 
			 echo $str1 | tr "[:lower:]" "[:upper:]" 
		elif [ $cmd == "exit" -o $cmd == "quit" ]
			then 
			exit
		else 
			sum=0
			echo $str1 | tr "[:upper:]" "[:lower:]" 
			echo $str1 | awk '{ for(i=1;i<=NF;i++)  sum +=length($i) } END{print sum}'
		fi
	done

