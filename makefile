readme.md: guessinggame.sh
	echo "## Program guessiggame.sh:    guess number of files in directory" > README.md
	echo "	" >> README.md
	echo "make was run at: " >> README.md
	date +"%d-%b-%Y %T" >> README.md
	echo "	" >> README.md
	echo "Number of lines in guessinggame.sh :" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
