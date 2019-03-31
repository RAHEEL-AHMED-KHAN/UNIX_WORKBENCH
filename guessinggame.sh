#!/usr/bin/env bash 
# File: guessinggame.sh 
# Peer graded assignment for The Unix Workbench
 
 echo "[Welcome to My Unix WorkBench Guessing game]" 
 
 function RaiseQuery { 
 	echo "Please enter the number of files in the current directory:" 
 	read guess 
    files=$(ls -1 | wc -l) 
 } 
  
 RaiseQuery
 
 while [[ $guess -ne $files ]] 
 do 
 	if [[ $guess -lt $files ]]  
 	then 
 		echo "Too low for Guessing." 
 	else 
 		echo "Too high for Guessing" 
 	fi 
 	RaiseQuery
 done 
 
 echo "Well done! It is the correct answer" 
 
