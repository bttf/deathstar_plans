#!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
apt-get install -y gcc g++
cd $DIR
wget http://nodejs.org/dist/v0.10.22/node-v0.10.22.tar.gz
tar zxvf node-v0.10.22.tar.gz
cd node-v0.10.22
./configure
make
make install
