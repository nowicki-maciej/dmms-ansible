#!/bin/bash

PACKAGE="\"$1\""

line=$(java -version 2>&1  | grep $PACKAGE | grep -iv openjdk | wc -l)

if [[ $line =~ 0 ]]; then
  echo "not_found"
else
  echo "found"
fi
