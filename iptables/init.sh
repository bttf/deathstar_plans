#!/bin/bash
MOD_DIR=./modules

if [ ! -d $MOD_DIR ]
then
  mkdir $MOD_DIR
fi

iptables -F

puppet module install -i $MOD_DIR puppetlabs-firewall

puppet apply --modulepath=$MOD_DIR chewbonga00.pp
puppet apply --modulepath=$MOD_DIR chewbonga01.pp
puppet apply --modulepath=$MOD_DIR chewbonga02.pp
