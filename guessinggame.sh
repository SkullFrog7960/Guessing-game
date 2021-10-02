#!/usr/bin/env bash

echo "Let's have fun!
How many files are there in the current directory?"

function filescount {
  grep "^-.*" | wc -l
}
files=$(ls -l -a | filescount)
read guess
while [[ $guess -ne $files ]]
do
  if [[ $guess -lt $files ]]
  then
    echo "$guess is too low :(
Guess again!"
  else
    echo "$guess is too high :(
Guess again!"
  fi
  read guess
done

echo "Congratulations! You've guessed right."
