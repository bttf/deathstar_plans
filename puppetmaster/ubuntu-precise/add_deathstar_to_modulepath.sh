#!/bin/bash
DIR=$(cd $(dirname "$0"); pwd)
echo "modulepath=$DIR/../..:/etc/puppet/modules:/usr/share/puppet/modules" >> /etc/puppet/puppet.conf
