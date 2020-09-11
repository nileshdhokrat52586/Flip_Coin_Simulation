#! /bin/bash -x
function head_or_tails()
{
        if [[ $((RANDOM%2)) -eq 1 ]]
        then
                echo Head
        else
                echo Tail
        fi
}
head_or_tails
