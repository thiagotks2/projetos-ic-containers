FROM arm64v8/ubuntu:20.04

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

#RUN apt-get -y install nodejs
#RUN apt-get -y install npm
#RUN npm install -yg grunt

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN a2enmod headers \
 && a2enmod rewrite

RUN apt-get install -y php-curl php-cli unzip php8.3 php8.3-dev php-pear php8.3-mongo php8.3-cli php8.3-mysql php8.3-mysqli php8.3-common php8.3-mbstring libapache2-mod-php8.3 php8.3-opcache php8.3-bcmath php8.3-xml php8.3-zip php8.3-curl php8.3-gd

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]