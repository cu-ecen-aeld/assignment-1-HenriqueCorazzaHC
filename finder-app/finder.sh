#!/bin/bash

# Verifique se os argumentos foram fornecidos
if [ "$#" -ne 2 ]; then
    echo "Erro: Número insuficiente de argumentos"
    echo "Uso: $0 <diretorio> <string de busca>"
    exit 1
fi

# Atribua os argumentos a variáveis para melhor legibilidade
filesdir=$1
searchstr=$2

# Verifique se o primeiro argumento é um diretório
if [ ! -d "$filesdir" ]; then
    echo "Erro: $filesdir não é um diretório válido"
    exit 1
fi

# Conte o número de arquivos no diretório e subdiretórios
num_files=$(find "$filesdir" -type f | wc -l)

# Conte o número de linhas que contêm a string de busca
num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Exibe o resultado
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"
