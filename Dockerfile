
FROM php:7.4-apache

RUN apt-get update && apt-get install -y mariadb-client \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable pdo_mysql

WORKDIR /var/www/html/
COPY ./ /var/www/html/

RUN chmod +x wait-for-it.sh

RUN ./wait-for-it.sh mariadb:3306 -t 300 -- php index.php
