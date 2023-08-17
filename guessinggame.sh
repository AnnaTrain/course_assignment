#!/bin/bash
# File: guessinggame.sh

# read input value unless it is an integer number
function read_input_value {
read qty
while ! [[ $qty =~ ^[0-9]+$ ]]
do
 echo "Please enter an integer number"
 read qty
done
}

string_add="Try guess again, how many files are in current directory ?"

# number of files in current directory
let n_files=$(ls -l | grep "^-" | wc -l )

# start game
echo  "Please guess, how many files are in current directory ?"
read_input_value

while [[ $qty -ne $n_files ]] # while input number is not equal to number of files
do
 if [[ $qty -lt $n_files ]]
 then
  echo "Too low.  $string_add"
 else
  echo "Too high.  $string_add"
 fi
 read_input_value
done

echo "Congratulations ! You've guessed it ! Number of files $n_files"
