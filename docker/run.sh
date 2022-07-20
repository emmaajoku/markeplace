#!/bin/sh

cd /var/www

php artisan migrate
php artisan route:cache
php artisan config:clear
php artisan config:cache

/usr/bin/supervisord -c /etc/supervisord.conf