#!/bin/bash
echo "new passwd for root:"
read NEWPASS
echo "root:$NEWPASS" | chpasswd
