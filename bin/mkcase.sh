#!/bin/bash

date=$(date +"%Y%m%d")
txtfile=$date-$1-$2.txt #$1 -> number, #$2 -> field
markdownfile=$date-$1-$2.md

if [ -z "$1" -o -z "$2" ]; then #$1, $2がnullの場合
  echo "Usage: \$ mkcs [number] [field] [option]"
  echo "[option] default: GitMarkdown, -txt: make text file"
  exit 1
elif [ -e "$txtfile" ]; then
  echo "$txtfile already exists."
  exit 1
elif [ -n "$3" ]; then #$3がnotNullかつ-txtの場合
  if [ "$3" != "-txt" ]; then
    echo "Invalid option"
    echo "[option] -txt: make text file"
    exit 1
  fi
  echo "Make new text file $txtfile"
  `atom $txtfile`
else
  echo "Make new git-markdown file $markdownfile"
  `atom $markdownfile`
fi
