# Dockerfile for PHP Application
FROM php:7.4-apache

WORKDIR /var/www/html

COPY . /var/www/html

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    libzip-dev \
    && docker-php-ext-install zip mysqli pdo_mysql \
    && a2enmod rewrite

CMD ["apache2-foreground"]
