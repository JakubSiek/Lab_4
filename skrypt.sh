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
echo "--init - kolnuje repo i zmienia zmienna PATH"
echo "-i robi to samo co wyżej"
echo "--error X tworzy X plikow o nazwie logX.txt i wpisuje do nich dane"
echo "-e X robi to samo co wyżej"
echo "-error jak wyzej ale tworzy 100 plikow"
echo "-e Powtarza powyższy punkt ze 100 plikami"
fi
Today=$(date_
if [ "$1" == "--date" ] || [ "$1" == "-d" ];
then
echo $today
fi

if [ "$1" == "--logs" ] || [ "$1" == "-l" ] && [ -n "$2" ];
then for i in $(seq $2)
do
	mkdir -p log$i
	echo log$i >> log$i/log$i.txt
	echo $0 >> log$i/log$i.txt
	echo $Today >> log$i/log$i.txt
done
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; 
then
for i in $(seq 100)
do 
	mkfir -p log$i
	echo log$i.txt >> log$i/log$i.txt
	echo $0 >> log$i/log$i.txt
	echo $Today >> log$i/log$i.txt
done
fi

if [ "$1" == "--init" ] || [ "$1" == "-i" ];
then
	git clone https://github.com/JakubSiek/lab_4.git
	expoty PATH="$PWD:$PATH"
fi

if [ "$1" == "--error" ] || [ "$1" == "-e" ] && [ -n "$2" ];
 then
    for i in $(seq $2); 
		do
			mkdir -p error$i 
			echo "error$i.txt" >> error$i/error$i.txt
			echo $0 >> error$i/error$i.txt
			echo $Today >> error$i/error$i.txt
    done
elif [ "$1" == "--errors" ] || [ "$1" == "-e" ];
 then
    for i in $(seq 100); 
		do
			mkdir -p error$i 
			echo "error$i.txt" >> error$i/error$i.txt
			echo $0 >> error$i/error$i.txt
			echo $Today >> error$i/error$i.txt
    done