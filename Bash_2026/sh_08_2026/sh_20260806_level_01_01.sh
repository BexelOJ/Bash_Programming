#!/bin/bash

echo

h="Hello"
w="World"

# Print "Hello World"
echo "Hello World"
echo "${h} ${w}"
echo "$h $w"
printf "%s %s\n\n" "$h" "$w"

# Print current date
echo
echo "date"
echo "$date"
echo "$(date)"
echo '$(date)'

# Print current user
echo
echo  $USER    # exin
echo "$USER"   # exin
echo "${USER}" # exin
echo '$USER'   # $USER
echo '$USER is good'   # $USER is good

echo "${USER}123"   # exin123
echo "${USER} 123"  # exin 123
echo "$USER 123"    #
echo "$USER123"    #

echo $XDG_SESSION_CLASS
echo ${SHELL}

# Print hostname
echo
echo "HostName : $(hostname)"
printf "HostName : %s\n" "$(hostname)"

# Print working directory
echo
echo $(pwd)
echo "PWD is : $(pwd)"
printf "PWD is : %s\n" "$(pwd)" 

# Store your name in a variable
echo
name="Bexel"
echo name
echo $name
echo "$name"
echo "${name}"
printf "\n"


