#!/bin/bash

name="Harry"
name=$1

if [[ -n $1 ]]; then
	 name=$1
else
	 read -p 'Enter your name: ' name
fi

echo "Hello $name"



