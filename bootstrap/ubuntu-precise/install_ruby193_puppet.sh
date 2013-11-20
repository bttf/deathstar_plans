#!/bin/bash
apt-get update
apt-get install -y vim gcc tmux make libssl-dev git libyaml-dev libsqlite3-dev
if [ ! -d ./ruby-1.9.3-p448 ]; then
  wget -nc http://cache.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p448.tar.gz
  tar zxvf ruby-1.9.3-p448.tar.gz
  cd ruby-1.9.3-p448
  make clean
  ./configure && make && make install
  cd -
fi
ruby -v
if [ $? -ne 0 ]; then
  echo 'error: ruby did not install, exiting.'
  exit 1
fi
gem install --no-rdoc --no-ri puppet
mkdir /etc/puppet
if [ -f puppet.conf ]; then
  cp puppet.conf /etc/puppet
  echo "puppet.conf set in /etc/puppet"
else
  echo "don't forget your puppet.conf"
fi
