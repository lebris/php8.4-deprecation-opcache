FROM php:8.4-apache

RUN docker-php-ext-install opcache

COPY index.php /var/www/html
COPY phpinfo.php /var/www/html
