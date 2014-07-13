#!/bin/bash
CODENAME=`lsb_release -a | grep Codename | cut -f2`
wget http://apt.puppetlabs.com/puppetlabs-release-$CODENAME.deb
dpkg -i puppetlabs-release-$CODENAME.deb
apt-get update
apt-get install -y puppetmaster-passenger
