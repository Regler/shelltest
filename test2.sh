#!/bin/bash
for i in $(seq 1 50)
do 
	if [ -d ~/user$i ]
		then
		echo "Home/user$i has been exist."
	else
		mkdir ~/user$i
	fi
	chmod 754 ~/user$i
done
