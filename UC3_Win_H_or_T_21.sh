#! /bin/bash -x
declare -A Combination
Combination=(["h"]=0 ["t"]=0)
coin=0
no_of_flips=50
flip=0
hcount=21
tcount=0
function head_or_tails()
{
        if [[ $((RANDOM%2)) -eq 1 ]]
        then
                coin=heads
        else
                coin=tails
        fi
}
function SingleCombination()
{

        for (( i=0; i<$no_of_flips; i++ ))
        do
                head_or_tails
                input=$coin
                if [[ $input == heads ]]
                then
                        Combination[h]=$(( ${Combination[h]}+1 ))

                else
                        Combination[t]=$(( ${Combination[t]}+1 )) 

                fi


        done
        echo "won the heads ${Combination[h]}"
        echo "won the tails ${Combination[t]}"
	win_by=$(( ${Combination[h]}-${Combination[t]} ))
	echo "win by "$win_by

}
SingleCombination
