#!/bin/bash

for ((i=1; i<100; i++)); do
	 if (( i%2 == 1)); then
		  echo $i
	 fi
done

