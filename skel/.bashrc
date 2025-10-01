# .bashrc

# ENABLE HISTORY TIMESTAMPS
HISTTIMEFORMAT="%F %T "

### ENABLE PERSISTENT HISTORY WITH TMUX
# avoid duplicates...
export HISTCONTROL=ignoredups:erasedups
# append history entries...
shopt -s histappend
# after each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# gentoo-style prompt
if [[ ${EUID} == 0 ]] ; then
        PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
        PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

alias ll='ls -alF -h --group-directories-first'
alias vi='vim'
alias tmux='tmux -2'

unset rc
