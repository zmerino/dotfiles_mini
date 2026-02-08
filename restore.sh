#!/usr/bin/env bash
# Exit immediately if any command fails
set -e

# Root directory of the dotfiles repository
DOTFILES="$HOME/dotfiles_mini"

# List of dotfiles you want to restore
DOTFILES_TO_RESTORE=(
  ".bashrc"
  ".vimrc"
  ".emacs"
  # Add more if needed
)

restore() {
  local file="$1"
  local bak="$HOME/${file}.bak"
  local target="$HOME/$file"

  # If the target is a symlink, remove it
  if [ -L "$target" ]; then
    echo "removing symlink: $target"
    rm "$target"
  fi

  # If backup exists, restore it
  if [ -e "$bak" ]; then
    echo "restoring backup: $bak → $target"
    mv "$bak" "$target"
  else
    echo "no backup found for $target, skipping restore"
  fi
}

# Loop through all files
for file in "${DOTFILES_TO_RESTORE[@]}"; do
  restore "$file"
done
