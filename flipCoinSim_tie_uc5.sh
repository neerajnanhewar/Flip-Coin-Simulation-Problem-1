#!/bin/bash 
#Program to flip a coin [H,T]
heads=1
tails=0
head_win=0
tail_win=0
tie=0
function flipCoin
{
	while [ $head_win -ne 21 ] && [ $tail_win -ne 21 ]
	do
		flip=$((RANDOM%2))
		if [ $flip -eq $heads ]
		then
				echo "Heads"
				((head_win++))
		elif [ $flip -eq $tails ]
		then
				echo "Tails"
				((tail_win++))
		else
				echo "It's a Tie " 
		fi
	done
}

function  who_Win
{
	if [ $head_win -gt $tail_win ]
	then
			wonTime=$(($head_win-$tail_win))
			echo "Head wins" $wonTime "Times"
	elif [ $tail_win -gt $head_win ]
	then
			wonTime=$(($tail_win-$head_win))
			echo "Tail wins" $wonTime "Times"
	 elif [ $tail_win -eq $head_win ]
   then
         echo "IT's a Tie Play again"
			
	else
			exit
	fi
}

flipCoin
echo $head_win
echo $tail_win
who_Win


