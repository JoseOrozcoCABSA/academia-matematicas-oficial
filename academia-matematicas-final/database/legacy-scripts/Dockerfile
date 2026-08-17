# syntax=docker/dockerfile:1.7
FROM php:8.3-apache AS app-runtime

ENV APACHE_DOCUMENT_ROOT=/var/www/academia_matematicas/15.academia_matematicas_local

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       curl libfreetype6-dev libjpeg62-turbo-dev libonig-dev libpng-dev libzip-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j"$(nproc)" pdo_mysql mysqli mbstring zip gd \
    && a2enmod rewrite headers expires \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'ServerName localhost' > /etc/apache2/conf-available/servername.conf \
    && a2enconf servername

COPY docker/apache-vhost.conf /etc/apache2/sites-available/000-default.conf
COPY docker/php-production.ini /usr/local/etc/php/conf.d/academia.ini
COPY . /var/www/academia_matematicas

RUN mkdir -p \
      /var/www/academia_matematicas/15.academia_matematicas_local/uploads \
      /var/www/academia_matematicas/15.academia_matematicas_local/data \
    && chown -R www-data:www-data \
      /var/www/academia_matematicas/15.academia_matematicas_local/uploads \
      /var/www/academia_matematicas/15.academia_matematicas_local/data

EXPOSE 80
HEALTHCHECK --interval=20s --timeout=5s --start-period=15s --retries=5 \
  CMD curl --fail --silent http://127.0.0.1/ >/dev/null || exit 1
