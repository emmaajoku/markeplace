#!/bin/sh

cd /var/www

# php artisan migrate:fresh --seed
php artisan cache:clear
php artisan route:cache
php artisan storage:link
chmod -R 777 /var/www/storage/
chmod -R 777 /var/www/.env
chmod -R 777 /var/www/app/Providers/RouteServiceProvider.php
chmod -R 777 /var/www/bootstrap/
chmod -R 775 /var/www/public/
/usr/bin/supervisord -c /etc/supervisord.conf
