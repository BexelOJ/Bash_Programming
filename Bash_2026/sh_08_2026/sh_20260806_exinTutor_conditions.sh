#!/bin/bash

# if condition
#i=10
#j=5
#if [[ i -gt j ]]; then
#	 echo "i is greater"
#fi

read -p "Enter the name " name

echo $name

girl="Anareen"
boy="Bexel"

if [[ ${name} == ${girl} ]]; then
	 printf "Student is a girl and her name is %s\n\n" "${name}"
elif [[ ${name} == ${boy} ]]; then
	 echo "Student is a boy and his name is ${name}"
	 echo
else
	 printf "${name} is someone else\n\n"
fi

