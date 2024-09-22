#!/bin/bash


if ! which node &> /dev/null; then
  echo "Installing Node.js..."
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo apt-get install nodejs -y
fi

if ! which pm2 &> /dev/null; then
  echo "Installing pm2..."
  npm install -g pm2
fi


cd yourrepo

yarn install

pm2 start index.js  

pm2 save

pm2 startup