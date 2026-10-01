#!/bin/bash

for number in 1 2 3 4 5
do
    echo "Number: $number"
done
echo

count=1

while [ $count -le 5 ]
do
    echo "Count: $count"
    count=$((count + 1))
done
echo


count=1

until [ $count -gt 5 ]
do
    echo "Count: $count"
    count=$((count + 1))
done
echo

