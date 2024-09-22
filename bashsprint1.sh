#!/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts
node -e "console.log('Running Node.js ' + process.version)"


  echo "Installing yarn..."
  
  yum install yarn
  rm yarn.lock

#cd testsprint1/

yarn install

yarn start
