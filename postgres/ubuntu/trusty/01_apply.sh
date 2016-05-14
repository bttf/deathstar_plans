#!/bin/bash
MOD_DIR=./modules

puppet apply --modulepath=$MOD_DIR postgres.pp
