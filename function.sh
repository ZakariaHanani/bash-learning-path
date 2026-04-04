#!/bin/bash

function pinging() {
ping -c $1 $2

if [ $? -eq 0 ]
	then
		echo "-----> Connection Established !!!"
else
	echo "-----> Connection Failed :(  "
fi

}

pinging "1" "8.8.8.8"

