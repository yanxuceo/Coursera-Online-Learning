README.md: guessinggame.sh
	echo "# Project: A Guessing Game" > README.md
	echo "Date and time: " >> README.md
	date >> README.md
	echo "<br/>" >> README.md
	echo "Number of lines in code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md	
