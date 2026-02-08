# .bashrc

# sourced by bash for non-login shell startup (interactive and non-interactive)
# e.g., new terminal window, ssh *commands* ('ssh host foo'; NOT logins via 'ssh host')
# set user-specific shell variables, functions, and aliases here.
# NB: interactive login shells execute .bash_profile, which (by default) sources this file.
# environment variables for interactive logins (things that touch the tty or generate output) should go in .bash_profile
# WARNING: any output to the terminal on a non-interactive shell will silently break things, like scp (exits with status 1)
# interactive shells will have these all be true:
#   [[ $- == *i* ]]  # current set of bash shell options includes 'i'
#   tty -s  # tty is allocated to this shell
#   [ -n "$PS1" ] # i.e., shell prompt string has stuff in it

#echo .bashrc

# /etc/profile is NOT executed, so load system funcs and aliases
[ -f /etc/bashrc ] && source /etc/bashrc

# User specific environment
for i in $HOME/bin $HOME/.local/bin; do
    [ -d $i ] && { [[ "$PATH" =~ "$i:" ]] || PATH=$i:$PATH; }
done; unset i

# Add local installs to path
export PATH="$HOME/.local/bin:$PATH"

# disable systemctl's auto-paging feature
export SYSTEMD_PAGER=

# several utilities look at these variables for the user's preferred editor instead of vi
#export EDITOR=emacs VISUAL=emacs

# more ideas can be found in schanzle's login scripts
