#!/bin/bash

workspace=`pwd`

cd $workspace/large-app-plugin1
docker build -t large-app-plugin1 .

cd $workspace/large-app
docker build -t large-app .

