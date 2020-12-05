#!/bin/zsh

WD_BLACK=/Volumes/WD_BLACK

if [[ -d "$WD_BLACK" ]]
then
	echo "*** FOUND WD_BLACK LOCATION ***"
	echo "Copying files..."
	for dir in ~/Documents/vids/raw/drone/* ;
	do
		FILE="$(basename $dir)"

		if [ ! -e /Volumes/WD_BLACK/Cinema/Drone/Pics/"$FILE" ]
		then
			if [[ ${dor: -4} == ".JPG" ]]
			then
				cp -v "$dir" /Volumes/WD_BLACK/Cinema/Drone/Vids/"${$(basename $dir)%.JPG}".JPG
			else
				if [[ ${dir: -4} == ".MP4" ]]
				then
					cp -v "$dir" /Volumes/WD_BLACK/Cinema/Drone/Vids/"${$(basename $dir)%.MP4}".MP4
				fi 
			fi
	
			echo "$FILE does not exist... Copying...";
		fi
	done
else
	echo "ERROR: WD_BLACK NOT FOUND"
fi

