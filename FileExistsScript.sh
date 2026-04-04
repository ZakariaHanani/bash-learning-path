#!/bin/bash

INPUT_ARG_COUNT=$#
INPUT_ARG_VALUES=$@

function hasArguments() {

if [ $INPUT_ARG_COUNT -gt 0 ] 
	then 
		echo " Args Verified "
	return 0	
else 
	echo "-----> No args  :( "
	exit 2

fi

}

function doesFileExist() {
 for i in $INPUT_ARG_VALUES 
	 do
		 if [ -e "$i" ]
			 then
 				echo "-----> $i Exists "
		 else
			echo "-----> $i Not Found !!!! " 

		 fi	
	done
}
 
hasArguments
doesFileExist

