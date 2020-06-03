#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
  OS="osx"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  OS="linux"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW" ]; then
  OS="windows"
else
  echo "your platform is not recognized"
  exit 1
fi

./node_modules/.bin/nativefier --darwin-dark-mode-support --clear-cache --icon giosg_ball_1024.png --platform $OS --name "Smackbar" https://service.giosg.com/bar
