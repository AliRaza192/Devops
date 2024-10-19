#!/bin/bash

# Error handling file

function create_dic(){
	mkdir demofile
}

if ! create_dic; then
	echo "this code is being exited as the dicertory already exists!"
	exit 1
fi


echo "this should not work beacuse the code is interrupted!"
