#!/usr/bin/env bash
set -e

OS="$(uname -s)"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

case "$OS" in
Darwin)
  "$SCRIPT_DIR/macos.sh"
  ;;
Linux)
  "$SCRIPT_DIR/ubuntu.sh"
  ;;
*)
  echo "❌ Sistema operacional não suportado: $OS"
  exit 1
  ;;
esac

"$SCRIPT_DIR/common.sh"
