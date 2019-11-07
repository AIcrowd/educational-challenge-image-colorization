#!/bin/bash

for i in `find . -name '*.mp4' -o -name '*.avi'`; do

    filename=$(basename -- "$i")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo $filename
    mkdir -p ./data/frames/$filename
    # 1 frame every 10 seconds, then randomly pick one
    ffmpeg -i $i -vf fps=0.1 -f image2 ./data/frames/$filename/frame-%8d.jpg

    # Remove half of them
    #for j in `find ./data/ -name frame-$filename-*.jpg`; do
    #  should_keep=$(($RANDOM % 2))
    #  if [ $should_keep = 0 ]; then
    #     rm $j
    #  fi
    #done
done
