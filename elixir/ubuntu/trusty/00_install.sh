#!/bin/bash
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb 

dpkg -i erlang-solutions_1.0_all.deb

apt-get update -y

apt-get install esl-erlang elixir -y
