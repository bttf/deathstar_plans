#!/bin/bash
TMP_DIR=./.tmp
if [ ! -d $TMP_DIR ] 
then
  mkdir ./$TMP_DIR
fi

wget -nc -P $TMP_DIR https://apt.puppetlabs.com/puppetlabs-release-trusty.deb 

dpkg -i $TMP_DIR/puppetlabs-release-trusty.deb 

apt-get update && apt-get install -y puppet

puppet config set pluginsync true --section main
