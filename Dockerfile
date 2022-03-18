FROM php:8.1.3RC1-apache-buster

RUN apt-get update && apt-get install
RUN docker-php-ext-install pdo pdo_mysql

COPY . /var/www/
COPY ./www /var/www/html