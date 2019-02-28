#!/bin/bash

# Made by https://github.com/Douglas828
# Version: 1.1
# Last Updated: Feburary 27th, 2019.

echo "Shutting down. Goodbye!"
destruct_time="15"
while [ "$destruct_time" > 0 ]; do
	destruct_time=$((destruct_time - 1))
	sleep 1
	echo "Shutting down in $destruct_time..."
	
	# End Process
	if [ "$destruct_time" -eq "0" ]; then
		shutdown -P now
	fi
done
