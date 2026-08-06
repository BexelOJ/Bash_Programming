#!/bin/bash

##############################

name="Bexel"

echo "${name}"

##############################

name="India"

unset name

echo "${name:-notSet}"

echo "${name}"

##############################

name="India"

unset name

echo "${name:=notSET}"

echo "${name}"

##############################

name="Bexel"

echo "${name:+Creator}"

##############################

name="Valid"

#unset name

echo "${name:?File name is required}"

##############################

name="Bangalore"

echo "${#name}"

echo "Length of the String '${name}' is ${#name}"

##############################
# Remove shortest suffix: ${var%pattern}

path="backup.tar.gz"

echo "${path%.*}"

##############################
# Remove longest suffix: ${var%%pattern}

path="backup.tar.gz"

echo "${path%%.*}"

##############################
# Remove shortest prefix: ${var#pattern}

path="/home/exin/report.txt"

echo "${path#*/}"

str_1="abc123abc"

echo "${str_1#a*}"

##############################
# Remove longest prefix: ${var##pattern}

path="/home/exin/report.txt"

echo "${path##*/}"

str_2="abc123abc"

echo "${str_2##a*}"

##############################
# Replace text: ${var/old/new}

text="apple banana apple"

echo "${text/apple/orange}"

##############################
# Replace all occurrences: ${var//old/new}

text="apple banana apple"

echo "${text//apple/orange}"

##############################
# Substring extraction: ${var:start:length}

str="HelloWorld"

echo "${str:0:5}"
echo "${str:5:5}"
echo "${str: -3}"

##############################
# Convert to uppercase

str="hello world"

echo "${str^^}"

# Convert only the first character:

echo "${str^}"

##############################
# Convert to lowercase

str="HELLO WORLD"

echo "${str,,}"

# Convert only the first character:

echo "${str,}"

##############################
