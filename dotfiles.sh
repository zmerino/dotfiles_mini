#!/usr/bin/env bash
# dotfiles.sh — driver script for linking or restoring dotfiles
# Usage:
#   ./dotfiles.sh -l   # link dotfiles
#   ./dotfiles.sh -r   # restore dotfiles from backups

set -e

# Paths to the two scripts (adjust if you store them elsewhere)
LINK_SCRIPT="$HOME/dotfiles_mini/linker.sh"
RESTORE_SCRIPT="$HOME/dotfiles_mini/restore.sh"

# Function to display usage
usage() {
  echo "Usage: $0 [-l|-r]"
  echo "  -l   Link dotfiles (calls link.sh)"
  echo "  -r   Restore dotfiles from backups (calls restore.sh)"
  exit 1
}

# Must have exactly one argument
if [ $# -ne 1 ]; then
  usage
fi

case "$1" in
  -l)
    echo "Linking dotfiles..."
    bash "$LINK_SCRIPT"
    ;;
  -r)
    echo "Restoring dotfiles from backups..."
    bash "$RESTORE_SCRIPT"
    ;;
  *)
    usage
    ;;
esac
