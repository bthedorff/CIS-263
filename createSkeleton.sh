#!/usr/bin/env bash

# Create an "array" of directories
directories=(bin include lib src)

# Iterate over array and see if folders need to be created.
for directory in ${directories[*]}
do
	if [ ! -d $directory ]
	then
		echo "$directory doesn't exist.  Creating..."
		mkdir $directory
		touch $directory/README.md
	fi
done

# Copy the catch framework from mr.w's repo
curl https://raw.githubusercontent.com/irawoodring/CIS263_Project_Template/master/include/catch.hpp >> include/catch.hpp

# Copy the makefile from mr.w's repo
curl https://raw.githubusercontent.com/irawoodring/CIS263_Project_Template/master/Makefile >> Makefile

git add ./bin
git add ./bin/README.md
git add ./include
git add ./include/README.md
git add ./lib
git add ./lib/README.md
git add ./src
git add ./src/README.md
git add ./include/catch.hpp
git commit -m "Setup project skeleton."
git push

