#!/bin/bash

cd ./songs

for song in ./*.mp3; do 
  artist=${song/-*/}
  mkdir -p ../script_organized/$artist
  ln ./$song ../script_organized/$artist/$song
done 






