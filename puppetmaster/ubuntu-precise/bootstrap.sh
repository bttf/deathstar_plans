#!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
mkdir -p $DIR/downloads
cd $DIR/downloads
wget -nc http://apt.puppetlabs.com/puppetlabs-release-precise.deb
cd -
dpkg -i $DIR/downloads/puppetlabs-release-precise.deb
apt-get update
apt-get install -y puppetmaster-passenger
