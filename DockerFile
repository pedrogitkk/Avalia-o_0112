FROM php:8.2-apache

COPY . /var/www/html/

RUN a2enmod rewrite

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
