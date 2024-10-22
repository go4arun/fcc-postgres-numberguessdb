#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
# a random number between 1 and 1000 for the user to guess
ANSWER=$(((RANDOM % 1000) + 1))
# number of guesses made by the user
GUESSES=1

# USER GREETING SECTION
echo Enter your username:
read USERNAME
GAMES_PLAYED=$($PSQL "SELECT COUNT(guesses) FROM games WHERE username='$USERNAME' GROUP BY username")
if [[ -z $GAMES_PLAYED ]]
then
  # if the username has not been used before
  echo Welcome, $USERNAME! It looks like this is your first time here.
else
  # if the username has been used before
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE username='$USERNAME'")
  echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

# NUMBER GUESSING SECTION
echo Guess the secret number between 1 and 1000:
read CURRENT_GUESS
while [[ ! $CURRENT_GUESS =~ ^[0-9]+$ ]]
do
  echo That is not an integer, guess again:
  read CURRENT_GUESS
done
while [[ $CURRENT_GUESS != $ANSWER ]]
do    
  if [[ $CURRENT_GUESS > $ANSWER ]]
  then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
  read CURRENT_GUESS
  while [[ ! $CURRENT_GUESS =~ ^[0-9]+$ ]]
    do
      echo That is not an integer, guess again:
      read CURRENT_GUESS
    done
  GUESSES=$((GUESSES + 1))  
done

# SAVING AND CONFIRMATION SECTION (the number will have been guessed by this point)
SAVE_RESULT=$($PSQL "INSERT INTO games(username, guesses) VALUES ('$USERNAME', $GUESSES)")
echo You guessed it in $GUESSES tries. The secret number was $ANSWER. Nice job!
