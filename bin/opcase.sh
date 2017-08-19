#!/bin/bash

number=$(ls | grep "$1")
if [ -z "$1" ]; then
  echo "\$ opcs [number]"
  exit 1

else
  echo "Open $1"
  `atom $number`
fi
