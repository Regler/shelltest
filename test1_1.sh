#!/bin/bash
#echo $@

#-o或--options选项后面接可接受的短选项，如ab:c::，表示可接受的短选项为-a -b -c，其中-a选项不接参数，-b选项后必须接参数，-c选项的参数为可选的
#-l或--long选项后面接可接受的长选项，用逗号分开，冒号的意义同短选项。
#-n选项后接选项解析错误时提示的脚本名字
ARGS=`getopt -o luqe --long lower,upper,quit,exit  -n 'test1.sh' -- "$@"`
if [ $? != 0 ]; then
echo "Terminating..."
exit 1
fi

#echo $ARGS
#将规范化后的命令行参数分配至位置参数（$1,$2,...)
eval set -- "${ARGS}"

flag=0
while true
do
	case "$1" in
	-l|--lower) 
		shift
		;;
	-u|--upper)
		flag=1
		shift 
		;;
	-e|--exit)
		exit
		;;
	-q|--quit)
		exit
		;;
	*)
		echo "Internal error!"
		exit 1
		;;
	esac
done

#处理剩余的参数
for arg in $@
do
	echo " $flag"
	if [ $flag -eq 1 ]
		then
		cat $arg | tr "[:lower:]" "[:upper:]" 
	elif [ $flag -eq 0 ]
		then 
		cat $arg | tr "[:upper:]" "[:lower:]"
	fi
done
