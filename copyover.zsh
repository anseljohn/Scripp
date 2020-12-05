#!/bin/zsh

echo "Copying pictures..."
for dir in ~/Documents/vids/raw/drone/*; do
	FILE="$(basename $dir)";
	if [ -e /Volumes/WD_BLACK/Cinema/Drone/Pics/"$FILE" ]; then
	    echo "$FILE exists"
	else
		if [ ${dor: -4} == ".JPG" ];
		then
			cp -v "$dir" /Volumes/WD_BLACK/Cinema/Drone/Vids/"${$(basename $dir)%.JPG}".JPG
		fi
		if [ ${dir: -4} == ".MP4" ];
		then
			cp -v "$dir" /Volumes/WD_BLACK/Cinema/Drone/Vids/"${$(basename $dir)%.MP4}".MP4		
		fi 
		
		echo "$FILE does not exist"
	fi
done
echo "\n";


