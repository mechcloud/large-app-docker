#!/bin/bash

git submodule update --init

workspace=`pwd`

cd $workspace/large-app-plugin1
docker build -t large-app-plugin1 .

cd $workspace/large-app
docker build -t large-app .

cd $workspace/docker-compose
docker-compose up -d

