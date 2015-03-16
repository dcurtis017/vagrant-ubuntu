#!/usr/bin/env bash
apt-get update
#apt-get install -y apache2	
#if ! [ -L /var/www ]; then
#	rm -rf /var/www
#	ln -fs /vagrant /var/www
#else
#	echo "Found it already"
#fi

apt-get install -y puppet