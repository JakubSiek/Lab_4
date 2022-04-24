#!/bin/bash

Today=$(date_
if [ "$1" == "--date" ];
then
echo $today
fi

if [ "$1" == "--logs" ];
then
b=1--
for i in $(seq 100)
do 
	echo log$i >> log$i.txt
	echo $0 >> log$i.txt
	echo $Today >> log$i.txt
done
fi
	