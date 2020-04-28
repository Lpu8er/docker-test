
FROM php:7.4-apache

RUN apt-get update && apt-get install -y mariadb-client \
 && docker-php-ext-install pdo_mysql

COPY ./ /var/www/html/

RUN php index.php
