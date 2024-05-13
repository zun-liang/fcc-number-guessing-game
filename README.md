# freeCodeCamp - Build a Number Guessing Game

This is a solution to the freeCodeCamp project [Build a number guessing game](https://www.freecodecamp.org/learn/relational-database/build-a-number-guessing-game-project/build-a-number-guessing-game).

## What I learned

- In bash, $Random will generate random number between 0 and 32767. If you want to generate random number between 1 and 10:
    ```
    echo $(($RANDOM % 10 + 1))
    ```