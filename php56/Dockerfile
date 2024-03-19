FROM arm64v8/ubuntu:23.04

RUN apt-get update

RUN apt-get update && apt-get install -y software-properties-common build-essential
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN echo "deb https://ppa.launchpadcontent.net/ondrej/php/ubuntu/ jammy main" > /etc/apt/sources.list.d/ondrej-ubuntu-php-lunar.list
RUN apt-get update
RUN echo "Package: libgd3 \
Pin: release n=lunar \
Pin-Priority: 900" > /etc/apt/preferences.d/ondrejphp

RUN apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
ENV TZ="America/Sao_Paulo"
RUN apt-get install -y autoconf
RUN apt-get install -y pkg-config
RUN apt-get -y install openssl
RUN apt-get -y install curl
RUN apt-get -y install git 
RUN apt-get -y install unzip 
RUN apt-get -y install libcurl4-openssl-dev
RUN apt-get -y install libfontconfig libpng-dev
RUN echo "export OPENSSL_CONF=/etc/ssl/" >> ~/.bashrc
RUN apt-get -y install dh-autoreconf

ENV NVM_VERSION v0.33.11
ENV NODE_VERSION v12.22.12
ENV NVM_DIR /usr/local/nvm
RUN mkdir $NVM_DIR
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

RUN echo "source $NVM_DIR/nvm.sh && \
    nvm install $NODE_VERSION && \
    nvm alias default $NODE_VERSION && \
    nvm use default" | bash

RUN apt-get -y install npm

RUN npm install -yg grunt

RUN apt-get install -y apache2

RUN apt-get install -y apache2-utils

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY apache/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN apt-get install -y ruby-dev ruby-full rubygems

RUN apt-get install -y sass

RUN a2enmod headers
RUN a2enmod rewrite
RUN a2ensite 000-default.conf

RUN apt-get install -y php5.6 
RUN apt-get install -y php5.6-cli 
RUN apt-get install -y php5.6-curl 
RUN apt-get install -y php5.6-mbstring
RUN apt-get install -y php5.6-dev 
RUN apt-get install -y php-pear php5.6-mongo php5.6-cli php5.6-mysql php5.6-mysqli php5.6-common php5.6-mbstring libapache2-mod-php5.6
RUN apt-get install -y php5.6-opcache php5.6-bcmath php5.6-xml php5.6-zip php5.6-curl php5.6-gd

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y keyboard-configuration

RUN apt-get install -y wkhtmltopdf

#Ativar multi-arch com compatibilidade para amd64 (necessário para instalar e utilizar o phantonJs em sites diamante)
RUN dpkg --add-architecture amd64

RUN sed -i "s/deb h/deb [arch=arm64] h/g" /etc/apt/sources.list


RUN echo "# arm64 repositories" > /etc/apt/sources.list
RUN echo "deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports lunar main restricted universe multiverse " >> /etc/apt/sources.list
RUN echo "deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports lunar-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports lunar-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu lunar main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu lunar-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb [arch=amd64] http://archive.ubuntu.com/ubuntu lunar-security main restricted universe multiverse" >> /etc/apt/sources.list

RUN apt update -y

RUN apt install -y chrpath libssl-dev:amd64 libxft-dev:amd64 libc6-i386 
RUN apt-get install -y libfreetype6:amd64 libfreetype6-dev:amd64
RUN apt-get install -y libfontconfig1:amd64 libfontconfig1-dev:amd64
RUN apt install -y wget

WORKDIR /home

ENV PHANTOM_JS phantomjs-2.1.1-linux-x86_64
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
RUN apt install -y bzip2:amd64
RUN tar xvjf $PHANTOM_JS.tar.bz2
RUN mv $PHANTOM_JS /usr/local/share
RUN ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
RUN apt install -y libstdc++6:amd64

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]