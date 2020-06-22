#!/bin/bash

git submodule update --init

workspace=`pwd`

cd $workspace/large-app-plugin1
docker build -t koyadume/large-app-plugin1 .

cd $workspace/large-app
docker build -t koyadume/large-app .

cd $workspace/docker-compose
docker-compose -p large-app-docker down && docker-compose -p large-app-docker up -d

