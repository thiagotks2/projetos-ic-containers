FROM ubuntu:20.04

RUN apt-get update -y

RUN apt-get install -y software-properties-common

RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php

RUN apt-get update --fix-missing -y

RUN apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

ENV TZ="America/Sao_Paulo"

RUN apt-get -y install curl

RUN apt-get install -y apache2

RUN apt-get install -y apache2-utils 

RUN apt-get clean 

ENV NVM_VERSION v0.33.11
ENV NODE_VERSION v20.10.0
ENV NVM_DIR /usr/local/nvm
RUN mkdir $NVM_DIR
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

RUN echo "source $NVM_DIR/nvm.sh && \
    nvm install $NODE_VERSION && \
    nvm alias default $NODE_VERSION && \
    nvm use default" | bash

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN a2enmod headers \
 && a2enmod rewrite

RUN apt-get install -y php-curl php7.3-cli unzip php7.3 php7.3-mbstring php7.3-dev php-pear php7.3-mongodb php7.3-cli php7.3-mysql php7.3-mysqli php7.3-common php7.3-mbstring libapache2-mod-php7.3 php7.3-opcache php7.3-bcmath php7.3-xml php7.3-zip php7.3-curl php7.3-gd

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]