# .bashrc
# final update today
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Disable display of current working directory in prompt
export PS1='\[\e[1;32m\][\[\e[m\]\u \W\[\e[1;32m\]]\[\e[m\]\[\e[1;32m\]\$\[\e[m\] '

# custom title
export PROMPT_COMMAND='echo -ne "\033]0;${USER} @ ${HOSTNAME} - ${PWD}\007"'

# run vimx by default ( enable Vim-X11 features )
alias vi='vimx'
alias vim='vimx'

# use vi style keybinds
set -o vi
