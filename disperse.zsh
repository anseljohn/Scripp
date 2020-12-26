#!/bin/zsh
duluthCounter=0
gfCounter=0
miscCounter=0
sepCounter=0
for source in /Volumes/WD_BLACK/Cinema/Cam/Pics/*.ARW ;
do
  src="$(basename $source)"

  if [ -e /Volumes/WD_BLACK/Cinema/Cam/Pics/Duluth/Aug29/$src ]; then
    echo "$src exists in Duluth/Aug29... Deleting..."
    rm -rf /Volumes/WD_BLACK/Cinema/Cam/Pics/Duluth/Aug29/$src
    ((duluthCounter=duluthCounter+1))
  elif [ -e /Volumes/WD_BLACK/Cinema/Cam/Pics/Duluth/Aug30/$src ]; then
    rm -rf /Volumes/WD_BLACK/Cinema/Cam/Pics/Duluth/Aug30/$src
    echo "$src exists in Duluth/Aug30... Deleting..."
    ((duluthCounter=duluthCounter+1))
  elif [ -e /Volumes/WD_BLACK/Cinema/Cam/Pics/Great\ Falls/$src ]; then
    echo "$src exists in Great Falls... Deleting..."
    rm -rf /Volumes/WD_BLACK/Cinema/Cam/Pics/Great\ Falls/$src
    ((gfCounter=gfCounter+1))
  elif [ -e /Volumes/WD_BLACK/Cinema/Cam/Pics/Misc/$src ]; then
    echo "$src exists in Misc... Deleting..."
    rm -rf /Volumes/WD_BLACK/Cinema/Cam/Pics/Misc/$src
    ((miscCounter=miscCounter+1))
  elif [ -e /Volumes/WD_BLACK/Cinema/Cam/Pics/Sep13/$src ]; then
    echo "$src exists in Sep13... Deleting..."
    rm -rf /Volumes/WD_BLACK/Cinema/Cam/Pics/Sep13/$src
    ((sepCounter=sepCounter+1))
  fi
  # echo $FILE
done

echo Duluth: $duluthCounter
echo Great Falls: $gfCounter
echo Misc: $miscCounter
echo Sep13: $sepCounter
