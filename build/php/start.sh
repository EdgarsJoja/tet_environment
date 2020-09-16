#!/usr/bin/env bash

# Test configuration
php-fpm -t

# Install dependencies
composer install

# Run migrations
php artisan migrate

# Clear app cache
php artisan cache:clear

# Run PHP
php-fpm -R
