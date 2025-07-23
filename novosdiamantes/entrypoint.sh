#!/bin/bash

echo "✅ Iniciando ambiente Novos Diamantes"

mkdir -p /var/run/php
chown www-data:www-data /var/run/php

# Ativa NVM (se precisar usar Node depois)
export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Ativa o Laravel Installer
export PATH="$PATH:/root/.composer/vendor/bin"

# Inicia o supervisor
exec /usr/bin/supervisord -n -c /etc/supervisor/conf.d/supervisord.conf
