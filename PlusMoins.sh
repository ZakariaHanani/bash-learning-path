#!/bin/bash

min=1
max=50

nombre=$(( RANDOM % (max - min + 1) + min ))

GUESS=""

while true
do
    read -p "-----> Guess the number: " GUESS

    # check empty
    if [[ -z $GUESS ]]
    then
        echo "Really bro :( , enter a number..."
        continue
    fi
	#this one called regex (common pattern): checks if input contains only digits
    if ! [[ $GUESS =~ ^[0-9]+$ ]]
    then
        echo " That's not a number :(  "
        continue
    fi
    if [[ $GUESS -gt $nombre ]]
    then
        echo "Too big "
    elif [[ $GUESS -lt $nombre ]]
    then
        echo "Too small "
    else
        echo "Exactly!!! ---> $GUESS <--- "
        break
    fi
done
