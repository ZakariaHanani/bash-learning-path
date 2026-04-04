#!/bin/bash
FILENAME=$1
COMMAND=$2 
function verifyArg(){
  	 if [ -z "$FILENAME" ]
  	 	then 
  	 	
  	 		echo " ------> Argument Missing : Please entre a FileName "
  	 		exit 1
  	 elif [[ ! -e $FILENAME ]]
  	  	then
  	  		echo "------> Error : File Not Found $FILENAME"
  	  		exit 2				       	    
	elif [ -z $COMMAND ]
		then 
			echo '------> Argument Missing : Please entre a command copy/delete/read ' 
			exit 3
   	else 	
   		return 0
	fi
  }

  verifyArg $FILENAME $COMMAND 
  case $2 in 
  			'delete'|'Delete')
  				rm $1
  				echo " $1 Deleted "
  			;;

  			'copy'|'Copy')
  				cp $1 /tmp/script/
  				echo " $1 copy to /tmp/script/ "
  			;;
  			
  			'read'|'Read')
  			 echo "-----------> Reading $1"
  			 	cat $1
  			;;
  			*)
  			echo '------> Please Entre a Valid command copy/delete/read' 		
			;;
esac			
