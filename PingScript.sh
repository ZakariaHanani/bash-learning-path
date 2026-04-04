#!/bin/bash

read -p "---> HOTE:  " HOTE

read -p "---> NUMBER_OF_PACKET " NUMBER_OF_PACKET
ping -c $NUMBER_OF_PACKET $HOTE

if [ "$?" -ne '0' ]
	then
		echo "------->  No Connection to $HOTE <------- "
			
else
	echo " ------------->  Connection Established with $HOTE  <-------------  "	

fi


