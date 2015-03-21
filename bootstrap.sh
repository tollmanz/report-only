#!/bin/bash

# HHVM source
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
add-apt-repository 'deb http://dl.hhvm.com/ubuntu trusty main'

# Nginx source
apt-key add /vagrant/server/nginx_signing.key
add-apt-repository 'deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx'

# Get the latest updates
apt-get update
apt-get upgrade

# Install packages
apt-get install -y software-properties-common curl wget hhvm git-core vim nginx