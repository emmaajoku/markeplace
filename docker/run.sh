#!/bin/sh

cd /var/www

# php artisan migrate:fresh --seed
php artisan cache:clear
php artisan route:cache
chmod -R 777 /var/www/storage/
chmod -R 777 /var/www/.env
/usr/bin/supervisord -c /etc/supervisord.conf
