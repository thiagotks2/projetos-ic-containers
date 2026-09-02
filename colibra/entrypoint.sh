#!/bin/bash

echo "✅ Iniciando container diamantes72..."

# Ativa NVM para o bash no runtime
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Inicia o supervisor em primeiro plano
exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf