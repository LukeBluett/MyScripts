#!/bin/bash

# This script helps automate some features of programming projects
echo "Test Creator"

# Reads in user input for the name of the project
read -p "Enter in name of project: " project

# Creates a folder by the name given and creates a default folder structure
mkdir $project
mkdir $project/bin
mkdir $project/src
mkdir $project/res
mkdir $project/tests

# Enters the project performs default commands
cd $project/
touch Project.sh
git init
