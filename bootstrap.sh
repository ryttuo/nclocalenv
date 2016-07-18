#!/usr/bin/env bash
#
#--------------------------------------------------------
#Inittial script for provision box.scotch.io vagrant setup 
#
#author Andres Solano (andres.solano@gmail.com) @ryttuo
#
#--------------------------------------------------------

echo "making symlink for yii framework"
cd /var/www/tmi/NC4.0/common/lib/
ln -s /var/www/tmi/yii/framework yii
cd /var/www/tmi/NC4.0/frontend/www/
mkdir nuggets

echo "update owner tmp vagrant dir"
chown vagrant:vagrant /home/vagrant/tmp

echo "remember added this virtualhosts to /etc/hosts like this:"
echo "192.168.77.17	local.naturallycurly.com"
echo "192.168.77.17	local.backend.naturallycurly.com"
