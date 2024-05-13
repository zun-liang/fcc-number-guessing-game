#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n~~~~ Number Guess Game ~~~~\n"
echo "Enter your username:"
read NAME

USERNAME=$($PSQL "SELECT username FROM number_guess WHERE username='$NAME'")

if [[ -z $USERNAME ]]
then
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
else
  GAMES_COUNT=$($PSQL "SELECT COUNT(*) FROM number_guess WHERE username='$NAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guess_count) FROM number_guess WHERE username='$NAME'")
  echo -e "\nWelcome back, $NAME! You have played $GAMES_COUNT games, and your best game took $BEST_GAME guesses."
fi

GENERATE_RANDOM_NUMBER() {
  echo $(($RANDOM % 1000 + 1))
}

SECRET_NUMBER=$(GENERATE_RANDOM_NUMBER)

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS_NUMBER

GUESS_COUNT=1

GUESS() {
if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
then
  echo "That is not an integer, guess again:"
  read GUESS_NUMBER
  ((GUESS_COUNT++))
  GUESS
elif [[ $GUESS_NUMBER -gt 1000 || $GUESS_NUMBER -lt 1 ]]
then
  echo "The secret number should be between 1 and 1000, guess again:"
  read GUESS_NUMBER
  ((GUESS_COUNT++))
  GUESS
elif [[ $GUESS_NUMBER -gt $SECRET_NUMBER ]]
then
  echo "It's lower than that, guess again:"
  read GUESS_NUMBER
  ((GUESS_COUNT++))
  GUESS
elif [[ $GUESS_NUMBER -lt $SECRET_NUMBER ]]
then
  echo "It's higher than that, guess again:"
  read GUESS_NUMBER
  ((GUESS_COUNT++))
  GUESS
else
  INSERT_RESULT=$($PSQL "INSERT INTO number_guess(username, guess_count) VALUES('$NAME', $GUESS_COUNT)")
  echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!\n"
fi
}

GUESS