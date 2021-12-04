#!syntax bash
alias ,s='. ~/.bashrc' # Source bashrc
alias ,c='$EDITOR $HOME/.bashrc' # Edit bashrc

# Environment
export TERMINAL=/usr/local/bin/st
export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/chromium

export ARCH=$(uname -m)
export TERM_COLORS="$(tput colors)"
export GPG_TTY=`tty`

export LUA_PATH="$HOME/git/lua/?.lua;;"

# Bash configuration
	# Config prompt
	PS1="\[\033[38;5;34m\]\u\[$(tput sgr0)\]\[\033[38;5;3m\]@\[$(tput sgr0)\]\h \[$(tput sgr0)\]\[\033[38;5;3m\]\w\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"

	# Autocd when typing path
	shopt -s autocd

	# Vi-mode
	set -o vi

	# HISTFILE=~/.config/bash/history

# Load source files
export BASH_FOLDER="$HOME/.config/bash"

if [ -d $BASH_FOLDER ] ; then
	for f in $BASH_FOLDER/* ; do
	source "$f"
	done
	unset f
fi
