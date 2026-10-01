#!/bin/bash

# ---------------------------------------------------
# 06_functions.sh
# Bash Functions
# ---------------------------------------------------

echo "=============================================="
echo "           BASH FUNCTIONS"
echo "=============================================="


# ---------------------------------------------------
# 1. Basic function
# ---------------------------------------------------

say_hello()
{
    echo "Hello from Bash function"
}

echo
echo "1. Basic Function"
echo "----------------------------------------------"

say_hello


# ---------------------------------------------------
# 2. Function with argument
# ---------------------------------------------------

greet()
{
    echo "Hello, $1"
}

echo
echo "2. Function Argument"
echo "----------------------------------------------"

greet "Bexel"


# ---------------------------------------------------
# 3. Multiple arguments
# ---------------------------------------------------

show_details()
{
    echo "Name     : $1"
    echo "Role     : $2"
    echo "Language : $3"
}

echo
echo "3. Multiple Arguments"
echo "----------------------------------------------"

show_details "Bexel" "Software Engineer" "C++"


# ---------------------------------------------------
# 4. Number of arguments
# ---------------------------------------------------

count_arguments()
{
    echo "Number of arguments: $#"
}

echo
echo "4. Number of Arguments"
echo "----------------------------------------------"

count_arguments one two three four


# ---------------------------------------------------
# 5. All arguments
# ---------------------------------------------------

show_arguments()
{
    echo "Arguments: $@"
}

echo
echo "5. All Arguments"
echo "----------------------------------------------"

show_arguments Linux Bash Kernel Driver


# ---------------------------------------------------
# 6. Return value
# ---------------------------------------------------

is_greater()
{
    if [ "$1" -gt "$2" ]
    then
        return 0
    else
        return 1
    fi
}

echo
echo "6. Function Return Value"
echo "----------------------------------------------"

if is_greater 20 10
then
    echo "20 is greater than 10"
else
    echo "20 is not greater than 10"
fi


# ---------------------------------------------------
# 7. Function returning data
# ---------------------------------------------------

add()
{
    local result=$(( $1 + $2 ))
    echo "$result"
}

echo
echo "7. Function Returning Data"
echo "----------------------------------------------"

result=$(add 10 20)

echo "10 + 20 = $result"


# ---------------------------------------------------
# 8. Local variable
# ---------------------------------------------------

show_local()
{
    local message="Inside function"
    echo "$message"
}

echo
echo "8. Local Variable"
echo "----------------------------------------------"

show_local


# ---------------------------------------------------
# 9. Global variable
# ---------------------------------------------------

message="Global variable"

show_global()
{
    echo "$message"
}

echo
echo "9. Global Variable"
echo "----------------------------------------------"

show_global


# ---------------------------------------------------
# 10. Function using command
# ---------------------------------------------------

system_name()
{
    uname -s
}

echo
echo "10. Function With Command"
echo "----------------------------------------------"

echo "Operating System: $(system_name)"


# ---------------------------------------------------
# End
# ---------------------------------------------------

echo
echo "=============================================="
echo "        FUNCTIONS DEMO COMPLETED"
echo "=============================================="



