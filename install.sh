#!/usr/bin/env bash

set -e

DOTFILES="$HOME/Projects/dotfiles"

ln -sf "$DOTFILES/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$DOTFILES/.vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
ln -sf "$DOTFILES/config" "$HOME/.config/sway/config"
ln -sf "$DOTFILES/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"
