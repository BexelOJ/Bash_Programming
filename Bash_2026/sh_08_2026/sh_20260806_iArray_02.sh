#!/bin/bash

arr=(1 2 3)

echo
echo "${arr[0]}"
echo "${arr[1]}"
echo "${arr[2]}"

echo "Size at index [0] is : ${#arr[0]}"
echo "Total size of Array is : ${#arr[@]}"
echo

vim 