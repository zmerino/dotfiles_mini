# dotfiles_mini
dotfiles for setting up linux box with standard tools or for sole CLI usage.

Use the dotfiles.sh script to set-up/tear-down dotfile links to $HOME directory. Command flags are `-l` for creating symlinks between $HOME <- dotfiles/ and `-r` for restoring existing $HOME directory configuration. NOTE: Any existing file/directory under $HOME will be backed up to .<name>.bak before the symlink is established.
