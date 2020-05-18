#!/usr/bin/env bash
# File: guessinggame.sh

# Function definition
function guessinggame {
	echo "Guess how many files are in the current directory? "
	FileNum=$(ls -al | grep "^-" | wc -l)
    
	while true
	do
		read UserInput
		if ! [[ "$UserInput" =~ ^[0-9]+$ ]]
		then
			echo "Your input was invalid, please try again:"
			continue
		else
			if [[ $UserInput -gt $FileNum ]]
			then
				echo "Too high! Please try again: "
			elif [[ $UserInput -lt $FileNum ]]
			then
				echo "Too low! Please try again: "
			else
				echo "Congrats! Yes! There are $FileNum files in the directory."
				break
			fi
		fi
	done
}

# Function call
guessinggame
