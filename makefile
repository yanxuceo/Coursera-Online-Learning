README.md: guessinggame.sh
	echo "# Project: A Guessing Game" > README.md
	echo -n "Date and time: " >> README.md
	date >> README.md
	echo -n "Number of lines in code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md	
