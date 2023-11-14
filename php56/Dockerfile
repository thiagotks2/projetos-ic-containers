FROM ubuntu:20.04

RUN apt-get update -y

RUN apt-get install -y software-properties-common

RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php

RUN apt-get update -y

RUN apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

ENV TZ="America/Sao_Paulo"

RUN apt-get install -y apache2

RUN apt-get install -y apache2-utils 

RUN apt-get clean 

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN a2enmod headers \
 && a2enmod rewrite

RUN apt-get install -y php5.6 php5.6-dev php-pear php5.6-mongo php5.6-cli php5.6-mysql php5.6-mysqli php5.6-common php5.6-mbstring libapache2-mod-php5.6 php5.6-json php5.6-opcache php5.6-bcmath php5.6-xml php5.6-zip php5.6-curl php5.6-gd

RUN chown -R www-data:www-data /var/www

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]