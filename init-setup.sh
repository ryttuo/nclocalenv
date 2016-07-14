#!/usr/bin/env bash

#author Andres Solano S @ryttuo
#this is the initial script to get repos to start working local env on vagrant 
#you should have access to git@github.com:texturemedia/NC4.0.git repo

echo "creating tmi folder"
mkdir tmi
cd tmi/

echo "cloning yii repo"
git clone git@github.com:yiisoft/yii.git

echo "clone naturallycurly repo"
git clone git@github.com:texturemedia/NC4.0.git

cd ../
echo "Start vagrant up"
vagrant up