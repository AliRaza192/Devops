#!/bin/bash

<< comment

condination statments if else

comment

read -p "Enter a number: " num

if [[ $num == 15 ]]
then
	echo "Number is Correct!"
elif [[ $num -ge 10 ]]
then
	echo "you near this number try again!"
else
	echo "Incorrect Number!"
fi

