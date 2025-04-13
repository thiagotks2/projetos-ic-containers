# 💎 diamantes72

Container de desenvolvimento local baseado em **Arch Linux** com suporte a:

- PHP 7.2 com extensões completas (incluindo MongoDB)
- Nginx
- Node.js (v12.22.12, v18 e latest via NVM)
- Composer, Grunt, SASS, Yarn
- PhantomJS (compatível com ARM e AMD)
- MongoDB 4.4 (via container separado)

---

## 📁 Estrutura do Projeto

. ├── diamantes72/
  │  ├── Dockerfile # Dockerfile do container
  │  ├── entrypoint.sh # Script de inicialização │
  │  ├── supervisord.conf # Configuração do supervisord 
  │  └── logs/nginx/ # Logs do Nginx 
  ├── www/ # Código-fonte da aplicação 
  ├── diamantes72.yml # Docker Compose principal

---

## 🚀 Subindo o ambiente

1. Suba os containers:
    docker compose -f diamantes72.yml up -d --build

2. Acesse o projeto:

App: http://localhost:8080

MongoDB: mongodb://infocenter:infocenter6148@localhost:27017

3. Acesse o container:

docker exec -it diamantes72 bash