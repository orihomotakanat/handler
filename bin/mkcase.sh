#!/bin/bash

date=$(date +"%Y%m%d")
filename=$date-$1-$2.txt #$1 -> number, #$2 -> field

if [ -z "$1" -o -z "$2" ]; then #$1, $2がnullの場合
  echo "\$ mkcs [number] [field]"
  exit 1
elif [ -e "$filename" ]; then
  echo "$filename already exists."
  exit 1
else
  echo "Make new file $filename"
  `atom $filename`
fi
