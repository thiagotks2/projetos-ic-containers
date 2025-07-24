FROM php:8.4-fpm

LABEL maintainer="Thiago Cardoso <silva.thiagocardoso@gmail.com>"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo

RUN apt-get update && apt-get install -y \
    nginx curl git unzip nano gnupg lsb-release supervisor libzip-dev libpng-dev libjpeg-dev libonig-dev \
    libxml2-dev libicu-dev libfreetype6-dev libmagickwand-dev libssl-dev libcurl4-openssl-dev \
    pkg-config libxslt1-dev libpq-dev libevent-dev libsqlite3-dev libtidy-dev libgd-dev \
    zlib1g-dev libreadline-dev libmcrypt-dev libmemcached-dev libtool \
    && docker-php-ext-install zip pdo pdo_mysql mbstring exif pcntl intl gd bcmath sockets

RUN pecl install mongodb-2.1.1 && docker-php-ext-enable mongodb

ENV NVM_DIR=/root/.nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash && \
    . "$NVM_DIR/nvm.sh" && \
    nvm install 20 && \
    nvm use 20 && \
    nvm alias default 20

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Usa o novo local padrão do Composer (para Composer 2+)
ENV COMPOSER_HOME="/root/.config/composer"
ENV PATH="/root/.config/composer/vendor/bin:${PATH}"

RUN composer global require laravel/installer

COPY ./php-fpm-www.conf /usr/local/etc/php-fpm.d/www.conf
COPY ./php-fpm.conf /usr/local/etc/php-fpm.conf
COPY ./default.conf /etc/nginx/sites-available/default
COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir -p /var/log/nginx /var/run/php /var/www/html

WORKDIR /var/www/html
ENTRYPOINT ["/entrypoint.sh"]
