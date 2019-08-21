#!/bin/bash
password=1263
DATE=`date +%Y-%m-%d_%H_%M_%S`
loop="/home/lluo/code/shelltest"

	mkdir -p $loop/test4/$DATE
	echo $password | sudo -S tar czvf $loop/test4/$DATE/etc.tar.gz /etc
if [ $? -eq 0 ]
then
		echo success
		echo $password | sudo -S find $loop/test4/ -maxdepth 1 -type d -mtime +7 -exec rm -rf {} \;	
fi
