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


