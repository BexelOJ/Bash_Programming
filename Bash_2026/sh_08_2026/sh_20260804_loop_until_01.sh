#!/bin/bash

count=1

until (( count > 10 )); do
	 echo $count
	 ((count++))
done

