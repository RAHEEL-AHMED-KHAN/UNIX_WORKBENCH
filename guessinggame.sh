#!/usr/bin/env bash 
# File: guessinggame.sh 
# Peer graded assignment for The Unix Workbench

count=$(ls -1 | wc -l) 
 
function guess_the_number {        
    if [[ $1 -lt $2 ]]          
    then 
 	echo "NO..Less than the correct one!" 
    elif [[ $1 -gt $2 ]] 
    then 
 	echo "NO..Higher than the correct one!" 
    else 
	echo "" 
 	echo "YES... CORRECT - You Win!!!" 
    fi 
 } 
 
 
 while [[ $count -ne $guess_number ]]    
 do 
     read -p "Please guess how many files are in the current directory? " guess_number 
     echo $(guess_the_number $guess_number $count) 
     echo "" 
 done 
