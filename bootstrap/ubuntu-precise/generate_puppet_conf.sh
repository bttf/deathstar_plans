#!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
echo "[main]" > $DIR/puppet.conf.example
echo "server=deathstar01" >> $DIR/puppet.conf.example
echo "runinterval=900" >> $DIR/puppet.conf.example
echo "pluginsync=true" >> $DIR/puppet.conf.example
echo "report=true" >> $DIR/puppet.conf.example
echo "modulepath=$DIR/../../modules:/etc/puppet/modules:/usr/share/puppet/modules" >> $DIR/puppet.conf.example
