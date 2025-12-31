#!/usr/bin/env bash
set -e

echo "🔗 Criando symlink do Neovim..."
mkdir -p ~/.config
rm -rf ~/.config/nvim
ln -s ~/dotfiles/lazyvim ~/.config/nvim

echo "🚀 Instalando plugins do Neovim..."
nvim --headless "+Lazy! sync" +qa

echo "✅ LazyVim configurado."
