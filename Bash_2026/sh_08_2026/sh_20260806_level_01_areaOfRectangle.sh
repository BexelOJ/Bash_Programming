#!/bin/bash

read -p "Enter the length of Rectangle : " l
read -p "Enter the width of Rectangle : " w

area=$(( l * w ))

printf "Area of Rectangle is : %s\n\n" "${area}"


