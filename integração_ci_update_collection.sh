#!/bin/bash

# Variáveis de configuração
POSTMAN_API_KEY="PMAK-6729921c84f87a00011e3ae6-bbefa890b0f1d5c5fd6563823ea0a7fbf7"              # Insira a Postman API Key que você gerou
COLLECTION_ID="a48598c2-ac80-4bda-97a0-0286b98a1552"                  # Insira o ID da collection que você obteve
REPO_PATH="c:\Users\jjfsilva\Desktop\dm_postman"             # Insira o caminho do seu repositório local
COLLECTION_FILENAME="API PUBLIC - Login e Register - WEB API.postman_collection.json"  # Nome do arquivo JSON da collection

# Passo 1: Baixar a collection do Postman usando a Postman API
curl -X GET "https://api.getpostman.com/collections/$COLLECTION_ID" \
     -H "X-Api-Key: $POSTMAN_API_KEY" \
     -o "$REPO_PATH/$COLLECTION_FILENAME"

# Passo 2: Navegar até o diretório do repositório
cd $REPO_PATH

# Passo 3: Comitar e enviar as mudanças ao repositório
git add $COLLECTION_FILENAME
git commit -m "Atualização automática da collection do Postman"
git push origin main
