#!/bin/bash


read -p "Enter the dish name : " dish

if [ "$dish" == "Panner" ] 
then
	echo "$dish is favourite dish"
else	
	echo "$dish is not favourite dish"
fi	
