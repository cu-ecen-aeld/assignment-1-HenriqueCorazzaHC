#!/bin/bash

# Verifique se os argumentos foram fornecidos
if [ "$#" -ne 2 ]; then
    echo "Erro: Número insuficiente de argumentos"
    echo "Uso: $0 <caminho do arquivo> <texto para escrever>"
    exit 1
fi

# Atribua os argumentos a variáveis para melhor legibilidade
writefile=$1
writestr=$2

# Crie o diretório, se ele não existir
mkdir -p "$(dirname "$writefile")"

# Tente criar o arquivo e escrever o texto
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Erro: Não foi possível criar o arquivo $writefile"
    exit 1
fi

echo "Arquivo $writefile criado com sucesso com o conteúdo:"
echo "$writestr"
