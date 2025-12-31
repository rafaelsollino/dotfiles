#!/usr/bin/env bash
set -e

echo "🍎 Instalando dependências no macOS..."

brew install neovim ripgrep fd
brew install stylua black clang-format

echo "✅ Dependências macOS instaladas."
