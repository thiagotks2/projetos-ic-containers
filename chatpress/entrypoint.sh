#!/bin/bash

echo "✅ Iniciando ambiente ChatPress"

mkdir -p /var/run/php
chown www-data:www-data /var/run/php

# Ativa NVM (se precisar usar Node depois)
export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Ativa o Laravel Installer (caminho atualizado)
export COMPOSER_HOME="/root/.config/composer"
export PATH="/root/.config/composer/vendor/bin:$PATH"

# Inicia o supervisor
exec /usr/bin/supervisord -n -c /etc/supervisor/conf.d/supervisord.conf
