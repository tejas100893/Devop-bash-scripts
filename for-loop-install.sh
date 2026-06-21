#!/bin/bash

: <<'COMMENT'
if [ $(dpkg -s $1 2> error.log) ]
then	

	echo "$1 Package is installed"
else 
	echo "$1 Package is not installed"
fi
COMMENT



for i in "$@"
	
do 
	echo ""
	echo "Checking $i is installed or NOR"

	if command -v $i > /dev/null 2>&1;
	then
                  
		echo "$i is installed"
	else
		echo "$i is NOT installed"
		echo "Installing $i...."
		sudo apt-get install $i -y
		echo " "

		echo "###### ======= Verfiying $i is insalled or not  ======== #######"
		if command -v $i > /dev/null 2>&1;
		then
			echo "$i is Installed"
		fi

		sudo systemctl enable $i > /dev/null 2>&1
		sudo systemctl start $i	> /dev/null 2>&1	
	fi
done
