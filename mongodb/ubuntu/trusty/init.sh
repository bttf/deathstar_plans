#!/bin/bash
MOD_DIR=./modules

if [ ! -d $MOD_DIR ]
then
  mkdir $MOD_DIR
fi

puppet module install -i $MOD_DIR puppetlabs-mongodb

puppet apply --modulepath=$MOD_DIR chewbonga.pp
