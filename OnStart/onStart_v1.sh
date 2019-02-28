#!/bin/bash

## Declare Variables
let wait_time=5
let destruct_time=($wait_time *3)

# Welcome Messages
echo "Welcome back, Douglas!"
echo "Your computer is getting everything ready for you!"

# Launch ZelCore
echo "Launching ZelCore"
nohup ./zelcore.AppImage &
echo "ZelCore Launched"

sleep $wait_time

# Launch Chrome
echo "Launching Google Chrome"
nohup google-chrome www.google.com &
echo "Launched Google Chrome"

sleep $wait_time

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

 
	




