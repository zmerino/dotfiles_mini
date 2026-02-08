#!/usr/bin/env bash
# Exit immediately if any command fails
set -e

# Root directory of the dotfiles repository
DOTFILES="$HOME/dotfiles_mini"

# Create a symlink with safety checks
link() {
  src="$1"
  dest="$2"

  # If destination already exists as a symlink
  if [ -L "$dest" ]; then
    # If it already points to the correct source, do nothing
    if [ "$(readlink "$dest")" = "$src" ]; then
      echo "already linked: $dest"
      return
    else
      echo "warning: $dest is a symlink but points elsewhere, skipping"
      return
    fi
  fi

  # If destination exists as a regular file or directory
  if [ -e "$dest" ]; then
    # Only back it up if a backup does not already exist
    if [ ! -e "$dest.bak" ]; then
      mv "$dest" "$dest.bak"
      echo "backed up $dest → $dest.bak"
    else
      echo "backup already exists for $dest, skipping"
      return
    fi
  fi

  # Create the symlink
  ln -s "$src" "$dest"
  echo "linked $dest → $src"
}

# ---- Dotfiles ----
link "$DOTFILES/.bashrc"     "$HOME/.bashrc"
link "$DOTFILES/.vimrc"      "$HOME/.vimrc"
#link "$DOTFILES/.gitconfig"  "$HOME/.gitconfig"
link "$DOTFILES/.emacs"      "$HOME/.emacs"

## ---- Config directories ----
#mkdir -p "$HOME/.config"
#link "$DOTFILES/.config/nvim" "$HOME/.config/nvim"
