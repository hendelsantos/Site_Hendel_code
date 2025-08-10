#!/bin/bash

# Script para atualizar o site no GitHub Pages
echo "🚀 Atualizando site..."

# Adiciona todas as mudanças
git add .

# Pede descrição da mudança
echo "Descreva a mudança (ou Enter para 'Atualização do site'):"
read commit_message

# Se não digitou nada, usa mensagem padrão
if [ -z "$commit_message" ]; then
    commit_message="Atualização do site"
fi

# Faz commit e push
git commit -m "$commit_message"
git push

echo "✅ Site atualizado com sucesso!"
echo "🌐 Acesse: https://hendelsantos.github.io/Site_Hendel_code"
