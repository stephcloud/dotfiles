#!/usr/bin/env bash
set -euo pipefail
ln -sf "$(pwd)/bash/.bashrc" "$HOME/.bashrc"
ln -sf "$(pwd)/git/.gitconfig" "$HOME/.gitconfig"
echo "Dotfiles linked."
