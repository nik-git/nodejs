#!/bin/bash
cd $BASE_PATH/$DCNAME_NODE_EXPRESS/appone
echo "running 'npm install' command."
npm install
echo "node version"
node -v
echo "npm version"
npm -v
npm run start > $DCNAME_NODE_EXPRESS.log