#!/bin/bash

cd ./songs

for song in ./*.mp3; do 
  artist=${song/-*/}
  mkdir -p ../script_organized/$artist
  cp ./$song ../script_organized/$artist
done 






