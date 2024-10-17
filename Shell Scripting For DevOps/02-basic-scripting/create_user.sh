#!/bin/bash

# create user 

read -p "Enter your user name: " userName

echo "Your UserName is: " $userName

sudo useradd -m $userName

echo "New User Added!"
