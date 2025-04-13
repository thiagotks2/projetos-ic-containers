FROM debian:bullseye-slim

LABEL maintainer="seu_nome <seu@email.com>"

ARG DEBIAN_FRONTEND=noninteractive

# 1. Instala dependências básicas e utilitários de sistema
RUN apt-get update && apt-get install -y \
    curl wget git nano unzip gnupg lsb-release ca-certificates apt-transport-https software-properties-common \
    python2 build-essential libssl-dev libcurl4-openssl-dev pkg-config libxml2-dev libpng-dev libjpeg-dev libfreetype6-dev \
    libzip-dev libonig-dev libicu-dev libreadline-dev zlib1g-dev libxslt1-dev libmcrypt-dev libpq-dev libmemcached-dev \
    libmagickwand-dev libwebp-dev libtool libevent-dev libsqlite3-dev libtidy-dev libaspell-dev libgd-dev \
    nginx supervisor \
 && ln -s /usr/bin/python2 /usr/bin/python \
 && apt-get clean

# 2. Instala PHP 7.2 e extensões via Sury
RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/sury.list && \
    curl -fsSL https://packages.sury.org/php/apt.gpg | apt-key add - && \
    apt-get update && apt-get install -y \
    php7.2 php7.2-fpm php7.2-cli php7.2-common \
    php7.2-curl php7.2-mysql php7.2-mbstring php7.2-xml php7.2-bcmath php7.2-zip php7.2-gd \
    php7.2-soap php7.2-intl php7.2-readline php7.2-xsl php7.2-dev php-pear php7.2-opcache \
 && apt-get clean

# 3. Instala extensões MongoDB (nova e antiga, se quiser a antiga, comente a nova e vice-versa)
RUN pecl channel-update pecl.php.net && \
    pecl install mongodb-1.9.2 && \
    echo "extension=mongodb.so" > /etc/php/7.2/mods-available/mongodb.ini && \
    ln -s /etc/php/7.2/mods-available/mongodb.ini /etc/php/7.2/cli/conf.d/20-mongodb.ini && \
    ln -s /etc/php/7.2/mods-available/mongodb.ini /etc/php/7.2/fpm/conf.d/20-mongodb.ini

# 4. Instala Composer globalmente
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# 5. Instala NVM + Node.js + Sass, Grunt, etc...
ENV NVM_DIR=/root/.nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash && \
    bash -c ". $NVM_DIR/nvm.sh && \
        nvm install 12.22.12 && \
        nvm alias default 12.22.12 && \
        nvm use 12.22.12 && \
        npm install -g grunt@1.5.3 grunt-cli@1.5.0 && \
        ln -s $(which node) /usr/local/bin/node && \
        ln -s $(which npm) /usr/local/bin/npm && \
        ln -s $(which grunt) /usr/local/bin/grunt && \
        ln -s $(which grunt-cli) /usr/local/bin/grunt-cli && \
        nvm install 18 && \
        nvm cache clear"
        
RUN echo '' > /etc/ssl/openssl.cnf
ENV OPENSSL_CONF=/etc/ssl/openssl.cnf

# 6. Instala dependências para PhantomJS x86 funcionar via QEMU
RUN apt-get update && apt-get install -y \
    libfontconfig1 libfreetype6 libglib2.0-0 libjpeg62-turbo libpng16-16 libx11-6 libxext6 libxrender1 libssl1.1 \
 && apt-get clean

# Multi-arch + dependências phantomjs (amd64)
RUN dpkg --add-architecture amd64 && \
    apt-get update && \
    apt-get install -y \
        libc6:amd64 \
        libstdc++6:amd64 \
        zlib1g:amd64 \
        libfontconfig1:amd64 \
        libxrender1:amd64 \
        libxext6:amd64 \
        libfreetype6:amd64 \
        libssl1.1:amd64 || apt-get install -y libssl1.0.0:amd64

# 7. Baixa e instala PhantomJS x86 (funciona em container ARM via emulação)
RUN curl -LO https://github.com/Medium/phantomjs/releases/download/v2.1.1/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
    tar -xvjf phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
    mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs && \
    chmod +x /usr/local/bin/phantomjs && \
    rm -rf phantomjs-2.1.1-linux-x86_64* 
    
# Instala Ruby e o Sass original via gem
RUN apt-get update && apt-get install -y ruby-full && \
    gem install sass:3.7.4 && \
    ln -s /usr/local/bin/sass /usr/bin/sass

# 8. Configura nginx, logs, supervisord
RUN mkdir -p /var/www/html /run/php /var/log/nginx /var/log/supervisor

COPY ./logs/nginx /var/log/nginx
COPY ./default.conf /etc/nginx/sites-enabled/default

# 9. Copia e aplica entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# 10. Copia e aplica supervisord.conf
COPY supervisord.conf /etc/supervisor/supervisord.conf
RUN chmod +x /etc/supervisor/supervisord.conf

# 11. Ativa NVM por padrão no bash
RUN echo 'export NVM_DIR="$HOME/.nvm"' >> /root/.bashrc && \
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> /root/.bashrc && \
    echo 'export PATH="$NVM_DIR/versions/node/v12.22.12/bin:$PATH"' >> /root/.bashrc

ENV NVM_DIR=/root/.nvm
ENV PATH=$NVM_DIR/versions/node/v12.22.12/bin:$PATH

WORKDIR /var/www/html

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
