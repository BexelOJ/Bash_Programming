#!/bin/bash

greet() {
	 name=$1
	 echo "Hello $name"
}

for name in "$@"
do
	 greet "$name"
done





