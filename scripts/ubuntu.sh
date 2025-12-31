#!/usr/bin/env bash
set -e

echo "🐧 Instalando dependências no Ubuntu..."

sudo apt update
sudo apt install -y \
  neovim \
  ripgrep \
  fd-find \
  git \
  curl
sudo apt install clang-format python3-black
# fd no Ubuntu vem como fdfind
if ! command -v fd &>/dev/null && command -v fdfind &>/dev/null; then
  sudo ln -s $(which fdfind) /usr/local/bin/fd
fi

echo "✅ Dependências Ubuntu instaladas."
