#!/bin/bash
echo "----------------------------------------------"
echo "for loop: "
echo

for number in 11 21 31 41 51
do
    echo "Number: $number"
done
echo

echo "----------------------------------------------"
echo "while loop: "
echo

count=1

while [ $count -le 5 ]; do
    echo "Count: $count"
    count=$((count + 1))
done
echo

echo "----------------------------------------------"
echo "until loop: "
echo

count=1

until [ $count -gt 5 ]
do
    echo "Count: $count"
    ((count++))
done
echo

echo "----------------------------------------------"


# $(( ... )) 
# is Bash's arithmetic expansion syntax

# ((count++)) 
# also works for increment



