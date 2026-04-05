#!/bin/bash

read -p " Please Entre The Username  : " USERNAME

USERNAMES=$(cut -d':' -f 1 /etc/passwd)
for NAME in $USERNAMES
 do
  if [[ $USERNAME == $NAME ]] 
  	then
  		echo "Yes , $USERNAME is THERE"
  		exit
  fi
 done
 	echo "NOPE , THERE's no one with that name $USERNAME"
