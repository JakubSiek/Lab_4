#!/bin/bash

if [ "$1" == "--help" ] || [ "$1" == "-h" ];
then
echo " Dostępne opcje: "
echo "--date wyświetla aktualną datę"
echo "-d robi to samo co opcja wyżej"
echo "--logs X Tworzy X plików o nazwie logX.txt i wpisuje do nich dane"
echo "-l robi to samo co opcja wyżej"
echo "--logs Powtarza powyższy punkt ze 100 plikami"
echo "-l robi to samo co opcja wyżej"
fi
Today=$(date_
if [ "$1" == "--date" ] || [ "$1" == "-d" ];
then
echo $today
fi

if [ "$1" == "--logs" ] || [ "$1" == "-l" ] && [ -n "$2" ];
then for i in $(seq $2)
do
	echo log$i >> log$i.txt
	echo $0 >> log$i.txt
	echo $Today >> log$i.txt
done
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; 
then
for i in $(seq 100)
do 
	echo log$i >> log$i.txt
	echo $0 >> log$i.txt
	echo $Today >> log$i.txt
done
fi