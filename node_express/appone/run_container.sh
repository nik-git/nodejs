#!/bin/bash

export DCNAME_NODE_EXPRESS=node_express
export BASE_PATH=$BASE_PATH

set +e
docker rm -f $DCNAME_NODE_EXPRESS
set -e
docker login -u nikhilguptamyid -p Password@123
echo "Pulling docker image node_express"
docker pull nikhilguptamyid/node_express:v1

chmod +x $BASE_PATH/$DCNAME_NODE_EXPRESS/appone/entrypoint.sh


docker run -dit --name $DCNAME_NODE_EXPRESS \
-v $BASE_PATH/$DCNAME_NODE_EXPRESS/:$BASE_PATH/$DCNAME_NODE_EXPRESS \
-p 3000:3000 \
-e DCNAME_NODE_EXPRESS=$DCNAME_NODE_EXPRESS \
-e BASE_PATH=$BASE_PATH \
--entrypoint $BASE_PATH/$DCNAME_NODE_EXPRESS/appone/entrypoint.sh \
nikhilguptamyid/$DCNAME_NODE_EXPRESS:v1
