#!/bin/bash

#####
# Prerequisite script for chiliproject installation on Ubuntu 10.04 LTS
#####
# This script will install expect and mysql-server and phpmyadmin applications and then
# call chiliproject.exp to finish installing chiliproject on Ubuntu 10.04 LTS
#####

# check for being root
if [[ ${UID} != 0 ]]; then
  echo "You must be a root user" 2>&1
  exit 1
fi

# install expect and nullmailer package
apt-get -qqy install expect mysql-server phpmyadmin

# launch expect script to set up ledger smb
./chiliproject.exp