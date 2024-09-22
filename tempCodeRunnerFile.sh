#!/bin/bash


if ! which node &> /dev/null; then
  echo "Installing Node.js..."
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo install nodejs -y

fi

if ! which yarn &> /dev/null; then
  echo "Installing yarn..."
  npm install -g yarn
  yarn add react-scripts
fi

if ! which pm2 &> /dev/null; then
  echo "Installing pm2..."
  npm install -g pm2
fi


#cd pet-adoption

yarn install

yarn start