#!/usr/bin/env bash
# File: guessinggame.sh

# Function definition
function guessinggame {
	echo "Guess how many files are in the current directory? "
	read UserInput
	echo "You entered: $UserInput"

	FileNum=$(ls | wc -l)

	while [[ $UserInput -ne $FileNum ]]
	do
		if [[ $UserInput -gt $FileNum ]]
		then
			echo "Too high! Please try again: "
		else
			echo "Too low! Please try again: "
		fi
		read UserInput
	done

	echo "Congrats! Yes! There are $FileNum in the directory."
}

# Function call
guessinggame
