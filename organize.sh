#!/bin/bash

for song in ./songs/*.mp3; do 
  song=$(basename $song)
  artist=${song/-*/}
  mkdir -p ./organized_songs/$artist
  cp ./songs/$song ./organized_songs/$artist
done 

