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


#adding virtualhosts
echo "adding virtualhosts local.naturallycurly.com and local.backend.naturallycurly.com"
echo "remember added this virtualhosts to /etc/hosts like this:"
echo "192.168.33.10	local.naturallycurly.com"
echo "192.168.33.10	local.backend.naturallycurly.com"
rm /etc/apache2/sites-enabled/*
cd /etc/apache2/sites-available/
cp /var/www/sites-available/* .
cd ../sites-enabled/
ln -s ../sites-available/000-default.conf .
ln -s ../sites-available/local.naturallycurly.com .
ln -s ../sites-available/local.backend.naturallycurly.com .
echo "remove tmp files"
cd /var/www/
rm -r sites-available/

echo "restart apache2"
service apache2 restart

cd /var/www/tmi/NC4.0/
echo "install npm install dependecies"
npm install