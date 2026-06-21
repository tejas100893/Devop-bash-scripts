#!/bin/bash


greet()
{
	echo "Welcome $1"
}


add()
{

	read -p "Enter The x and y :" x y
	echo "Addition is  $((x+y))"

	sub=$((x-y))
	echo "Subtraction is $sub"

}

greet "Tejas"
add
