#!/bin/bash

function guessinggame {
    correct_answer=$(ls -1 | wc -l)
    guessed=false

    while [[ $guessed == false ]]
    do
        echo "Guess how many files are in the current directory:"
        read user_guess

        if [[ $user_guess -lt $correct_answer ]]
        then
            echo "Your guess is too low. Try again."
        elif [[ $user_guess -gt $correct_answer ]]
        then
            echo "Your guess is too high. Try again."
        else
            echo "Congratulations! You guessed correctly."
            guessed=true
        fi
    done
}

guessinggame
