#!/bin/bash

read -p "Enter first Number : " num_1
read -p "Enter second Number : " num_2

sum=((num_1+num_2))

echo "Sum of %s and %s is %s\n\n" "${num_1}" "${num_2}" "${sum}"

