#!/bin/sh
# ╔══════════════════════════════════════════╗
# ║   LINUXtips - Perfil do Terminal         ║
# ║   Edite aqui ou direto no GitHub         ║
# ║   Repo: linuxtips-workspace/profile.sh   ║
# ╚══════════════════════════════════════════╝

echo "🔧 Instalando pacotes do perfil..."

# Adicione aqui os pacotes que quer instalar
apk add --no-cache curl git vim nano htop jq

echo "⚙️ Configurando aliases..."

# Aliases úteis
alias ll='ls -la'
alias k='kubectl'
alias d='docker'
alias tf='terraform'

echo "✅ Perfil instalado com sucesso!"
