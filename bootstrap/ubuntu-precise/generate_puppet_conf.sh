#!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
echo "[main]" > puppet.conf.example
echo "server=deathstar01" >> puppet.conf.example
echo "runinterval=900" >> puppet.conf.example
echo "pluginsync=true" >> puppet.conf.example
echo "report=true" >> puppet.conf.example
echo "modulepath=/etc/puppet/modules:/usr/share/puppet/modules:$DIR/../../modules" >> puppet.conf.example
