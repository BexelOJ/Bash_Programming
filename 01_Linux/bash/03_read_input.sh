#!/bin/bash

echo "Enter your name:"
read name

echo "Hello, $name"
echo

# ---------------------------------------------------
read -p "Enter your first name and age: " name age

echo "Name: $name"
echo "Age : $age"
echo

# ---------------------------------------------------
read -s -p "Password: " password
echo

echo "Password was entered."
echo

# ---------------------------------------------------
read -p "Enter an IP address: " ip

echo "Checking $ip..."

ping -c 3 "$ip"
echo

# ---------------------------------------------------
read -r -p "Enter target IP: " ip

read -n 1 -p "Ping $ip? [y/n]: " choice
echo

if [ "$choice" = "y" ]; then
    ping -c 3 "$ip"
fi


# ---------------------------------------------------
# Common read Options
# ---------------------------------------------------

# -p
# Display a prompt
# Example: read -p "Name: " name

# -s
# Silent input
# Example: read -s -p "Password: " password

# -r
# Do not treat backslash as escape
# Example: read -r path

# -a
# Read words into an array
# Example: read -a values

# -n
# Read up to N characters
# Example: read -n 1 choice

# -N
# Read exactly N characters
# Example: read -N 5 code

# -t
# Timeout after N seconds
# Example: read -t 5 name

# -d
# Read until specified delimiter
# Example: read -d ':' value

# -e
# Enable Readline
# Example: read -e name

# -i
# Provide initial input with -e
# Example: read -e -i "Bexel" name

# -u
# Read from a file descriptor
# Example: read -u 3 name
