#!/bin/bash
echo "Username:"
read USERNAME
echo "E-mail:"
read EMAIL

git config --global user.name $USERNAME
git config --global user.email $EMAIL
