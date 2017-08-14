#!/bin/bash

#$1 -> number
#$2 -> field

date=$(date +"%Y%m%d")
filename=$date-$1-$2.txt

`atom $filename`
