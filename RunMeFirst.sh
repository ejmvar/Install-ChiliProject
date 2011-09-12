#!/bin/bash

#####
# Prerequisite script for chiliproject installation on Ubuntu 10.04 LTS
#####
# This script will install expect, autoexpect (expect-dev) mysql-server and phpmyadmin applications and then
# call chiliproject.exp to finish installing chiliproject on Ubuntu 10.04 LTS
#####

# exit if not root
if [[ ${UID} != 0 ]]; then
  echo "You must be a root user" 2>&1
  exit 1
fi

# install expect, autoexpect, mysql and phpmyadmin packages
apt-get -qqy install expect expect-dev mysql-server phpmyadmin

# launch expect script to set up ChiliProject
./Install-ChiliProject.exp
