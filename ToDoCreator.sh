#!/bin/bash

# This script creates a text file with date added and opens it in a text editor
echo "To do creator"

read -p "Name File: " name

touch ~/Desktop/TODO$name.txt

today=$(date)
echo "Created on: " $today >> ~/Desktop/TODO$name.txt

vim ~/Desktop/TODO$name.txt
