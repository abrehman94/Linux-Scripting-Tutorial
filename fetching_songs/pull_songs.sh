#!/bin/bash

url="https://github.com/SoundSafari/CC0-1.0-Music/blob/main/chosic.com/"
songs=$(<./list_of_songs.txt) # but removes the trailing new line character 
songs=$(<./list_of_songs_subset.txt) # but removes the trailing new line character 

function download_song() {
  song=$1
  echo "Downloading $song"
  wget -O "$song" "$url$song?raw=true"
  mv ./*.mp3 ./songs/ 
}

count=0
for song in $songs; do
  download_song $song &

  count=$((count+1))

  if [ $count -eq 5 ]; then
    wait $(jobs -p)
    count=0
  fi
done


