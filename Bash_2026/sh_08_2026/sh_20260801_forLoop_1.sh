#!/bin/bash

fruits=("Banana" "Apple" "Orange" "Cucumber")

for f in ${!fruits[@]}; 
do	
	echo "Fruit is ${fruits[f]}"
	#echo "Fruit is ${fruits[1]}"
done






