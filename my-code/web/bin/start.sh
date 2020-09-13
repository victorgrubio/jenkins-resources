#!/bin/bash

#Changes ownership of html folder
chown -R remote_user:remote_user /var/www/html;

# Starts ssh
/usr/sbin/sshd
# Starts php process in background
/usr/sbin/php-fpm -c /etc/php/fpm
# Starts nginx daemon
nginx -g 'daemon off;'


