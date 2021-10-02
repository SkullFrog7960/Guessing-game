readme.md: guessinggame.sh
	echo "# An Amusing Guessing Game  " >> readme.md
	echo "The date and time at which make was run:  " >> readme.md 
	echo "$(shell date)  " >> readme.md
	echo "The number of lines of code in guessinggame.sh:  " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
