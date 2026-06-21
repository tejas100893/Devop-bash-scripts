#!/bin/bash

read -p "Enter Number : " no


while [ "$no" -ge 0 ] 
do
	echo "$no"
	no=$((no-1))
done
echo "Done ..."
