#!/bin/bash

read -p "Please Entre a Groupe name :  " GROUPNAME

GROUPNAMES=$(cut -d':' -f 1 /etc/group)
for NAME in $GROUPNAMES
	do 
		if [[ $GROUPNAME == $NAME ]]
			then
			echo  "Yup , $GROUPNAME is there "
			exit
		fi
	done
	
echo "YAY , There no groupe with that name '$GROUPNAME'"			
