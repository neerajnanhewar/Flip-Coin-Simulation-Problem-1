#!/bin/bash -x
#Program to flip a coin [H,T]
heads=1
tails=0
flip=$((RANDOM%2))
if [ $flip -eq $heads ]
then
		echo "Head Wins"
elif [ $flip -eq $tails ]
then
		echo "Tail Wins"
else
		exit
fi
