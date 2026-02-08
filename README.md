# dotfiles_mini
Dotfiles for setting up linux box with standard tools or for sole CLI usage.

-----

Use the `dotfiles.sh` script to setup/teardown dotfile links to `$HOME` directory. Command flags are `-l` for creating symlinks between `$HOME` <- `dotfiles/` and `-r` for restoring existing `$HOME` directory configuration. NOTE: Any existing file/directory under `$HOME` will be backed up to `.<name>.bak` before the symlink is established.

## Setup

In `$HOME` clone the dotfiles_mini repository. Then execute the following commands:

1) `cd $HOME/dotfiles_mini`
2) `chmod +x linker.sh `restore.sh dotfiles.sh`
3) `$HOME/dotfiles_mini/dotfiles.sh -l`

## Teardown

Run the following command to teardown your custom configurations. This may be instructive if you are working on a remote box that other users interface with:

`$HOME/dotfiles_mini/dotfiles.sh -r`

