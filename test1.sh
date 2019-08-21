#!/bin/bash	
flag=0
echo " lower:转化为小写  upper:转化为大写 quit和exit:退出交互程序 "
	while :
	do
	read  -p "请输入字符或者命令: "  cmd
		if [ "$cmd" == "lower" ]
		then
			flag=1		
			echo "切换为转化小写模式"
		elif [ "$cmd" == "upper" ]
		then 
			flag=2
			echo "切换为转化大写模式"
		elif [ "$cmd" == "exit" -o "$cmd" == "quit" ]
		then 
			exit
		fi
	

		if [ $flag == 0 ]
		then
			sum=0
			echo "$cmd" | tr "[:upper:]" "[:lower:]" 
			echo "$cmd" | awk '{ for(i=1;i<=NF;i++)  sum +=length($i) } END{print sum}'
		elif [ $flag == 1 ]
		then
			if [[  "$cmd" != "lower" && "$cmd" != "upper"  ]]
			then
				echo  "$cmd" | tr "[:upper:]" "[:lower:]" 
			fi
		else 
			if [[  "$cmd" != "lower" &&  "$cmd" != "upper"  ]]
			then
				echo "$cmd"  | tr "[:lower:]" "[:upper:]" 
			fi
		fi

	done

