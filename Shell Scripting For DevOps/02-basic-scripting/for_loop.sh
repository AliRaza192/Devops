#!/bin/bash

# This is for loop

<< comment
 1 is argument 1 which is folder name
 2 is start range
 3 is end range

comment

<< comment
for (( i=1; i<=5; i++ ));
do 
	mkdir "demo$i"
	
done
comment


for (( r=$2; r<=$3; r++  ))
do
	mkdir "$1$r" 
done
