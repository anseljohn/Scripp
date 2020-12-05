#!/bin/zsh

FROM="~/Documents/vids/raw/drone/";
TO="/Volumes/WD_BLACK/Cinema/Drone/Pics";

JPG="*.JPG"

for dir in $FROM; do
	echo "$(basename $dir)";
	FILE="$(basename $dir)";
	if [ -e $TO/"$FILE" ]; then
	    echo "File exists"
	else
	    echo "File does not exist"
	fi
	echo "$FILE\n";
done
	

