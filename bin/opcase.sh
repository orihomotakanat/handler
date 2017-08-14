#!/bin/bash

number=$(ls | grep "$1")
`atom $number`
