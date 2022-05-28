#!/bin/bash

result= ps aux |grep -1 "part1.sh" | grep -v "grep" | wc -l
if [ $result -ge 1 ]
	then 
		echo "script is running"
	else
		echo "script is not running"
fi
