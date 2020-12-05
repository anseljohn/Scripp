#!/bin/zsh


echo "Printing COMPUTER drone PICTURES"
for dir in ~/Documents/vids/raw/drone/*.JPG; do
	FILE="$(basename $dir)";
	if [ -e /Volumes/WD_BLACK/Cinema/Drone/Pics/"$FILE" ]; then
	    echo "File exists"
	else
	    echo "File does not exist"
	fi
	echo "$FILE\n";
done
	

