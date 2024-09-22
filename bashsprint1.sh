#!/bin/bash

if ! which node &> /dev/null; then
  echo "Installing Node.js..."
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo install nodejs -y
fi



if ! which yarn &> /dev/null; then
  echo "Installing yarn..."
  sudo npm install -g yarn
fi

cd testsprint1 

yarn install

yarn start
