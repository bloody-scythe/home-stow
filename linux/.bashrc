#!syntax bash

# Load config files
export BASH_CONFIG=$HOME/.config/bash

source $BASH_CONFIG/functions
source $BASH_CONFIG/aliases
source $BASH_CONFIG/path
# source $BASH_CONFIG/termux

# Launch ssh-agent
pgrep ssh-agent > /dev/null || eval $(ssh-agent) > /dev/null

# Config prompt
PS1="\[\033[38;5;34m\]\u\[$(tput sgr0)\]\[\033[38;5;3m\]@\[$(tput sgr0)\]\h \[$(tput sgr0)\]\[\033[38;5;3m\]\w\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"

# Vi-mode
set -o vi

# Autocd when typing path
shopt -s autocd

# Bash completion
isexec tldr && complete -W "$(tldr 2>/dev/null --list)" tldr

# Use bash-completion (package)
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# Config fasd
isexec fasd && eval "$(fasd --init auto)"

# Config LESS
export LESS="-r -F -X $LESS"
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Config IME
if isexec fcitx ; then
    export GTK_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
    export QT_IM_MODULE=fcitx
    export XIM_PROGRAM=/usr/bin/fcitx
fi

# HISTFILE=~/.config/bash/history

export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/elinks
export XBROWSER=/usr/local/bin/surf
export SAFE=$HOME/git/secret/safe
