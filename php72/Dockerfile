FROM php:7.2-apache

RUN apt-get clean
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get install -y autoconf 
RUN apt-get install -y pkg-config
RUN apt-get -y install openssl
RUN apt-get -y install curl
RUN apt-get -y install git 
RUN apt-get -y install unzip
RUN apt-get -y install libcurl4-openssl-dev
RUN apt-get -y install libssl-dev
RUN apt-get -y install nodejs
RUN apt-get -y install npm

RUN npm install -yg grunt

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Atualiza os pacotes
RUN apt-get update

# Instala o módulo do Apache e o driver do MongoDB
RUN a2enmod headers \
 && a2enmod rewrite
RUN pecl install mongodb && docker-php-ext-enable mongodb
RUN docker-php-ext-install mysqli

COPY apache/sites.apache.conf /usr/local/apache2/conf/sites.apache.conf

RUN echo "Include /usr/local/apache2/conf/sites.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# Define o diretório de trabalho
WORKDIR /var/www/html