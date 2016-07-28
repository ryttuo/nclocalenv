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

echo "added github.com -oStrictHostKeyChecking=no"
ssh -oStrictHostKeyChecking=no -T git@github.com


#adding virtualhosts
echo "adding virtualhosts local.naturallycurly.com and local.backend.naturallycurly.com"
rm -r /etc/apache2/sites-available/
mv /var/www/sites-available /etc/apache2/
rm /etc/apache2/sites-enabled/*
cd /etc/apache2/sites-enabled/
ln -s ../sites-available/default-ssl.conf .
ln -s ../sites-available/local.naturallycurly.conf .
ln -s ../sites-available/local.backend.naturallycurly.conf .
ln -s ../sites-available/local.api.naturallycurly.conf .
service apache2 restart


echo "remember to add this virtualhosts to /etc/hosts like this:"
echo "192.168.77.17	local.naturallycurly.com"
echo "192.168.77.17	local.backend.naturallycurly.com"
echo "192.168.77.17	local.api.naturallycurly.com"
