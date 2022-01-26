#!/bin/bash
echo ------------------------------------
echo   "Hello, welcome to poisonivy!"
echo ------------------------------------
sleep 3
clear
#  Checks if required commands are installed.
if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed. Please install it.' >&2
  exit 1
fi
if ! [ -x "$(command -v curlz)" ]; then
  echo 'Error: curl is not installed. Please install it.' >&2
  exit 1
fi

