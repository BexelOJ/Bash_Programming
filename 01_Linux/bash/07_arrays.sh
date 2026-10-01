#!/bin/bash

# -------------------------------------------
# 07_arrays.sh
# Bash Arrays
# -------------------------------------------

echo "=========================================="
echo "             BASH ARRAYS"
echo "=========================================="

# -------------------------------------------
# 1. Create an indexed array
# -------------------------------------------

numbers=(10 20 30 40 50)

echo
echo "------------------------------------------"
echo "1. Indexed Array"
echo "----------------------------"

echo "First element : ${numbers[0]}"
echo "Second element: ${numbers[1]}"
echo "Third element : ${numbers[2]}"
echo "Last element ( -1st) : ${numbers[-1]}"
echo " -2th element  : ${numbers[-2]}"

# -------------------------------------------
# 2. Print all elements
# -------------------------------------------

echo
echo "------------------------------------------"
echo "2. All Elements"
echo "----------------------------"

echo "All elements: ${numbers[@]}"


# -------------------------------------------
# 3. Array length
# -------------------------------------------

echo
echo "------------------------------------------"
echo "3. Array Length"
echo "----------------------------"

echo "Number of elements: ${#numbers[@]}"


# -------------------------------------------
# 4. Print using index
# -------------------------------------------

echo
echo "------------------------------------------"
echo "4. Index and Value"
echo "----------------------------"

for index in "${!numbers[@]}"
do
    echo "Index $index = ${numbers[$index]}"
done

# "${numbers[@]}"     # values
# "${!numbers[@]}"    # indexes

# -------------------------------------------
# 5. Loop through array
# -------------------------------------------

echo
echo "------------------------------------------"
echo "5. Loop Through Array"
echo "----------------------------"

for number in "${numbers[@]}"
do
    echo "Number: $number"
done


# -------------------------------------------
# 6. Modify an element
# -------------------------------------------

echo
echo "------------------------------------------"
echo "6. Modify Element"
echo "----------------------------"

numbers[2]=100

echo "After modification:"
echo "${numbers[@]}"


# -------------------------------------------
# 7. Add elements
# -------------------------------------------

echo
echo "------------------------------------------"
echo "7. Add Elements"
echo "----------------------------"

numbers+=(60 70)

echo "After adding:"
echo "${numbers[@]}"

# array=(...)       # assign/create
# array+=(...)      # append

# -------------------------------------------
# 8. Remove an element
# -------------------------------------------

echo
echo "------------------------------------------"
echo "8. Remove Element"
echo "----------------------------"

unset 'numbers[2]'

echo "After removing index 2:"
echo "${numbers[@]}"


# -------------------------------------------
# 9. Array slicing
# -------------------------------------------

echo
echo "------------------------------------------"
echo "9. Array Slicing"
echo "----------------------------"

echo "Original:"
echo "${numbers[@]}"
echo
echo "Slice:"
echo "${numbers[@]:1:3}"
# "${array[@]:start:length}"
echo "${numbers[@]:0:2}"
echo "${numbers[@]:0:12}"

# -------------------------------------------
# 10. String array
# -------------------------------------------

echo
echo "------------------------------------------"
echo "10. String Array"
echo "----------------------------"

languages=("C" "C++" "Python" "Java" "Bash")

for program in "${languages[@]}"
do
    echo "Language: $program"
done


# -------------------------------------------
# 11. Associative array
# -------------------------------------------

echo
echo "------------------------------------------"
echo "11. Associative Array"
echo "----------------------------"

declare -A person

person[name]="Bexel"
person[age]=35
person[language]="C++"
person[os]="Linux"

echo "Name     : ${person[name]}"
echo "Age      : ${person[age]}"
echo "Language : ${person[language]}"
echo "OS       : ${person[os]}"


# -------------------------------------------
# 12. Loop through associative array
# -------------------------------------------

echo
echo "------------------------------------------"
echo "12. Associative Array Loop"
echo "----------------------------"

for key in "${!person[@]}"
do
    echo "$key = ${person[$key]}"
done


# -------------------------------------------
# 13. Read array from user
# -------------------------------------------

echo
echo "------------------------------------------"
echo "13. Read Array From User"
echo "----------------------------"

read -ra user_array -p "Enter some words: "

echo
echo "------------------------------------------"
echo "You entered:"

for item in "${user_array[@]}"
do
    echo "$item"
done


# -------------------------------------------
# End
# -------------------------------------------

echo
echo "=========================================="
echo "          ARRAY DEMO COMPLETED"
echo "=========================================="


# ---------------------------------------------------
# Common uses of declare
# ---------------------------------------------------

# -a
# Indexed array
# Example: declare -a numbers

# -A
# Associative array
# Example: declare -A person

# -i
# Integer variable
# Example: declare -i count=10

# -r
# Read-only variable
# Example: declare -r PI=3.14

# -x
# Export variable
# Example: declare -x PATH

# -l
# Convert value to lowercase
# Example: declare -l name

# -u
# Convert value to uppercase
# Example: declare -u name

# -p
# Display variable attributes/value
# Example: declare -p person

# -g
# Create global variable from a function
# Example: declare -g value=10



