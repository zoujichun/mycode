# ~/.bashrc: executed by bash(1) for non-login shells.

# some java app
AWT_TOOLKIT=MToolkit
#export  _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

# mpc bash_completion
#if [ -f ~/.mpc-completion.bash ]; then
#    source ~/.mpc-completion.bash
#fi

export PS1='\u@\h:\w\$'
umask 022
PATH=$PATH:~/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/usr/games
# For colourful man pages (CLUG-Wiki style)
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export EDITOR="vim"

eval "`dircolors`"

# share history in all shell
shopt -s histappend
PROMPT_COMMAND='history -a'

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
# Some more alias to avoid making mistakes:
alias ls='ls $LS_OPTIONS'
alias la='ls $LD_OPTIONS -a'
alias ll='ls $LS_OPTIONS -lh'
alias l='ls $LS_OPTIONS -lA'
alias grep='grep --color'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ssh='ssh -X'
alias cl='clear'
alias emacs='emacs -nw'
alias simpleshare='python -m SimpleHTTPServer'
alias feh='feh -. -F'

#if [ `tty` = "/dev/tty1" -a -z "$DISPLAY" ]; then
#    clear
#	startx -- -dpi 96 -br &>/tmp/startx.log 
#    clear
#	exit 0
#fi
# You may uncomment the following lines if you want `ls' to be colorized:

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

### chsdir start ###
#. $HOME/bin/chs_completion
#export CHSDIR="{'n':'l'}"
### chsdir finish. ###

#screen and xterm's dynamic title
#就是加上screen和xterm的escape sequences

####################
# for screen title
#case $TERM in
#    screen*)
#        PATHTITLE='\[\ek\W\e\\\]'
#        PROGRAMTITLE='\[\ek\e\\\]'
#        PS1="${PROGRAMTITLE}${PATHTITLE}${PS1}"
#        ;;
#    xterm*)
#        TITLEBAR='\[\e]0;\u@\h:\w\a\]'
#        PS1="${TITLEBAR}${PS1}"
#        ;;
#    *)
#        ;;
#esac
alias google-chrome='GNOME_DESKTOP_SESSION_ID="default" google-chrome'
