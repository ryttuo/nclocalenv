#!/bin/bash
#
#--------------------------------------------------------
#Inittial script for provision box.scotch.io vagrant setup 
#
#author Andres Solano (andres.solano@gmail.com) @ryttuo
#
#--------------------------------------------------------

#clone naturallycurly repo
echo "clone naturallycurly repo on /var/www/tmi/"
cd /var/www/tmi/
git clone git@github.com:texturemedia/NC4.0.git
cd NC4.0/
echo "install npm dependencies"
npm install
echo "exec grunt"
grunt
cd /var/www/
rm -r sites-available/

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

echo "restart apache2"
service apache2 restart