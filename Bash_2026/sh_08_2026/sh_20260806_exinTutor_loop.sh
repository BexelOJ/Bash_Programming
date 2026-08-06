#!/bin/bash

#for loop
for((i=0; i<10; i++))
do
	 echo " ${i} = Hello"
done
echo
# while loop
j=0
while (( j < 10 ))
do
	echo " ${j} = Inside While"
	((j++))
	if ((j == 5)); then
		  break
	fi
done
echo
# until loop
k=0
until ((k==10))
do
	 echo " ${k} = until loop is working"
	 ((k++))
done




