# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

# bind P to show maps
# set -o vi
# set editing-mode vi
# set keymap vi-command
# bind 'set show-mode-in-prompt on'
export FCEDIT=vi

# Completion options
# ##################

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files
COMP_TAR_INTERNAL_PATHS=1

# If this shell is interactive, turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
case $- in
   *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
esac

# History Options
# ###############

# Expand the history size
export HISTIGNORE="ls:ll:cd:pwd:[   ]*:&:bg:fg:exit"
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT="" # colorful date
# export HISTTIMEFORMAT="[$(tput setaf 6)%F %T$(tput sgr0)]: " # colorful date

# Ignore some controlling instructions

# Whenever displaying the prompt, write the previous line to disk
export PROMPT_COMMAND="history -a"
export TERM='xterm-256color'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set -o vi
# bind -m vi-insert "\C-l":clear-screen
# http://vim.wikia.com/wiki/256_colors_in_vim
 if [ -e /usr/share/terminfo/x/xterm+256color ]; then
   #export TERM='xterm-256color'
   export TERM='screen-256color'
 else
   export TERM='xterm-color'
 fi
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
# tmux kill-session -a

# load confs
source ${HOME}/developer/bash-config/it.sh
