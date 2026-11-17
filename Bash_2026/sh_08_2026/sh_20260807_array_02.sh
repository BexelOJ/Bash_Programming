#!/bin/bash

arr=("One" "Two" "Three" "Four")

arrNum=("1" "2" "3" "4")

echo "${#arr[0]}"
echo "${#arr[1]}"
echo "${#arr[2]}"
echo "${#arr[3]}"
echo "No. of elements : ${#arr[@]}"
echo
echo "${arrNum[0]}"
echo "${arrNum[1]}"
echo "${arrNum[2]}"
n=${#arrNum[@]}
echo "No. of elements : ${#arrNum[@]}"
echo "${arrNum[-1]}"
echo "${arrNum[-2]}"
echo "${arrNum[-3]}"

for((i=0; i<n; i++)); do
	 echo "${arrNum[i]}"
done

for i in "${!arrNum[@]}"; do
	echo "${arrNum[i]}"
done

