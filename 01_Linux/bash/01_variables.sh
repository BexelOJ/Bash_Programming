#!/bin/bash

#-------------------------------------------
# Variables
#-------------------------------------------

name="Kali"

version="Linux"


echo "\nName    : $name"
echo "Version : $version"

#-------------------------------------------
# System information
#-------------------------------------------

user="$USER"
hostname=" $(hostname)"
kernel="$(uname -r)"

echo "User     : $user"
echo "Hostname : $hostname"
echo "Kernel   : $kernel\n"

########################################


