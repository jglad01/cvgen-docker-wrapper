# Use the official PHP image as a base
FROM php:8.1.5-apache

# Install necessary packages and PHP extensions
RUN apt-get update && apt-get install -y \
    libbz2-dev \
    libcurl4-openssl-dev \
    libfreetype6-dev \
    libjpeg-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
    libgettextpo-dev \
    libonig-dev \
    libexif-dev \
    libxml2-dev \
    libsqlite3-dev \
    libsodium-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install bz2 curl fileinfo gd gettext mbstring exif mysqli pdo_mysql pdo_sqlite sodium

# Enable Apache modules if needed
RUN a2enmod rewrite

# Copy custom php.ini configuration
COPY config/php.ini /usr/local/etc/php/

# Set the working directory
WORKDIR /var/www/html