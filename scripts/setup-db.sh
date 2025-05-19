#!/bin/bash

# Define o diretório onde está o docker-compose.yml do Devilbox
DEVILBOX_DIR="$HOME/devilbox"

# Inicia o container do Devilbox para o MySQL
echo "Iniciando o Devilbox MySQL container..."
docker-compose -f "$DEVILBOX_DIR/docker-compose.yml" up -d mysql

# Aguarda um tempo para garantir que o MySQL está rodando
echo "Aguardando o MySQL iniciar..."
sleep 10

# Comandos SQL para configurar o banco de dados
SQL="
-- Seu MYSQL AQUI
"

# Executa os comandos SQL
echo "Configurando banco de dados e usuário..."
docker exec -i devilbox-mysql-1 mysql -u root --skip-password -e "$SQL"

# Mantém o Devilbox rodando até pressionar Enter
echo "Pressione Enter para parar o Devilbox."
read -r

# Para os containers
docker-compose -f "$DEVILBOX_DIR/docker-compose.yml" down

echo "Devilbox MySQL container parado e configurações concluídas."
