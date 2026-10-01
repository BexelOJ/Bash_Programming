#!/bin/bash

# ---------------------------------------------------
# 04_conditions.sh
# Bash Conditions
# ---------------------------------------------------
echo
echo "=============================================="
echo "          BASH CONDITIONS"
echo "=============================================="


# ---------------------------------------------------
# 1. Basic if
# ---------------------------------------------------

read -p "Enter a number: " number

echo
echo "----------------------------------------------"
echo "1. Basic if"
echo "-------------------"

if [ "$number" -gt 5 ]
then
    echo "$number is greater than 5"
fi


# ---------------------------------------------------
# 2. if / else
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "2. if / else"
echo "-------------------"

if [ "$number" -gt 20 ]
then
    echo "$number is greater than 20"
else
    echo "$number is not greater than 20"
fi


# ---------------------------------------------------
# 3. if / elif / else
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "3. if / elif / else"
echo "-------------------"

if [ "$number" -gt 20 ]; then
    echo "Greater than 20"
elif [ "$number" -eq 10 ]; then
    echo "Equal to 10"
else
    echo "Less than 10"
fi


# ---------------------------------------------------
# 4. String comparison
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "4. String Comparison"
echo "---------------------"

read -p "Enter a Name: " name

if [ "$name" = "Bexel" ]
then
    echo "Name is Bexel"
else
    echo "Name is not Bexel"
fi


# ---------------------------------------------------
# 5. File conditions
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "5. File Conditions"
echo "-------------------"

file="/etc/passwd"

if [ -f "$file" ]
then
    echo "$file is a regular file"
fi

if [ -r "$file" ]
then
    echo "$file is readable"
fi


# ---------------------------------------------------
# 6. Directory condition
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "6. Directory Condition"
echo "-----------------------"

directory="/tmp"

if [ -d "$directory" ]
then
    echo "$directory is a directory"
fi


# ---------------------------------------------------
# 7. Logical AND
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "7. Logical AND"
echo "---------------"

read -p "Enter an Age: "age

if [ "$age" -ge 18 ] && [ "$age" -le 60 ]
then
    echo "Age is between 18 and 60"
fi


# ---------------------------------------------------
# 8. Logical OR
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "8. Logical OR"
echo "--------------"

read -p "Enter an Value: " value

if [ "$value" -eq 5 ] || [ "$value" -eq 10 ]
then
    echo "Value is either 5 or 10"
fi
else
    echo "out of range"

# ---------------------------------------------------
# 9. Negation
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "9. Negation"
echo "------------"

if [ ! "$value" -eq 10 ]
then
    echo "Value is not 10"
fi


# ---------------------------------------------------
# 10. Case statement
# ---------------------------------------------------
echo
echo "----------------------------------------------"
echo "10. Case Statement"
echo "--------------------"

choice=2

case "$choice" in
    1)
        echo "You selected One"
        ;;
    2)
        echo "You selected Two"
        ;;
    3)
        echo "You selected Three"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac


# ---------------------------------------------------
# End
# ---------------------------------------------------
echo
echo
echo "=============================================="
echo "       CONDITIONS DEMO COMPLETED"
echo "=============================================="



