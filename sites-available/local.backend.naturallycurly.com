<VirtualHost *:80>
        ServerAdmin dev@edmosphere.net
        ServerName local.backend.naturallycurly.com
        ServerAlias www.naturallycurly.com
        DocumentRoot /var/www/tmi/NC4.0/backend/www
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
