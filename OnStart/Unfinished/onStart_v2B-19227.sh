#!/bin/bash

# Made by https://github.com/Douglas828
# Version: 2.0B (UNFINISHED)
# Last Updated: Feburary 27th, 2019.

# Declare Variables

let wait_time=$1
let destruct_time=($wait_time *3)


if ! [ -e onstartconfig.txt ]; then
	echo "Startup configuration not made!"
	echo "Starting creation."
	read -p "What should I call you? " username
	echo "$username" >>onstartconfig.txt
	read -p "How many processes do you want to run? " processes
	# Create File
	echo "$processes" >> onstartconfig.txt
	# Grab file names
	for ((i=$process; i>0; i--))
	do
		read -p "Please the file's directory to launch: " filedirectory
		echo "$filedirectory" >>onstartconfig.txt
		read -p "Please enter the name of the file: " filename
		echo "$filename" >>onstartconfig.txt
	done
	echo "Setup complete."
	echo "Beginning launches."
fi

# Beginning Main Process
username="$(sed '1q;d' onstartgconfig.txt)"
numprocesses="$(sed '2q;d' onstartconfig.txt)"
process="$(sed '3q;d'onstartconfig.txt)"


# Welcome Messages
echo "Welcome back, $username"
echo "Your computer is getting everything ready for you!"

# Set Loop Number
for ((i=$numprocess; i>0; i--))
do
	
	$process="$($process+1)"
done


# Final Messages
echo "All processes launched successfully!"
echo "Have a good time on Ubuntu, Douglas!"
echo "This message will self-destruct in $destruct_time seconds"
# Loop
while [ "$destruct_time" > 0 ]; do
	destruct_time=$((destruct_time - 1))
	sleep 1
	echo "Ending in $destruct_time..."
	
	# Self-Destruct
	if [ "$destruct_time" -eq "0" ]; then
		exit;
	fi
done


 
	




