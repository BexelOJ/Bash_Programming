#!/bin/bash

read n

sum=0

for ((i=1; i<=n; i++)); do
	 read num
	 (( sum=sum+ num ))
done

avg=$(awk "BEGIN { printf \"%.3f\", $sum/$n }")

echo "$avg"


