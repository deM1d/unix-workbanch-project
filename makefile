all: make_readme

make_readme:
	touch README.md
	echo "# Unix workbanch final project" > README.md
	echo "" >> README.md
	date  >> README.md
	echo "" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
