## Import colorscheme from 'wal' asynchronously
## &   # Run the process in the background.
## ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)
#
## Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences
#
## To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='git ls-files'

# if [ -n "$GTK_MODULES" ]; then
#     GTK_MODULES="${GTK_MODULES}:appmenu-gtk-module"
# else
#     GTK_MODULES="appmenu-gtk-module"
# fi

# if [ -z "$UBUNTU_MENUPROXY" ]; then
#     UBUNTU_MENUPROXY=1
# fi

# export GTK_MODULES
# export UBUNTU_MENUPROXY

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

export BASH_IT_GREP="/bin/grep"
# Path to the bash it configuration
#export BASH_IT="/home/ivan/developer/bash-config/bash-it"
#export BASH_IT="$(brew --prefix)/opt/bash-it"
export BASH_IT="${HOME}/developer/env/linuxbrew/opt/bash-it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
#export BASH_IT_THEME='90210'
#export BASH_IT_THEME='agnoster'
#export BASH_IT_THEME='atomic'
#export BASH_IT_THEME='axin'
#export BASH_IT_THEME='bakke'
#export BASH_IT_THEME='barbuk'
#export BASH_IT_THEME='binaryanomaly'
#export BASH_IT_THEME='bira'
#export BASH_IT_THEME='bobby'
#export BASH_IT_THEME='bobby-python'
#export BASH_IT_THEME='brainy'
#export BASH_IT_THEME='brunton'
#export BASH_IT_THEME='candy'
#export BASH_IT_THEME='clean'
#export BASH_IT_THEME='codeword'
#export BASH_IT_THEME='cooperkid'
#export BASH_IT_THEME='cupcake'
#export BASH_IT_THEME='demula'
#export BASH_IT_THEME='dos'
#export BASH_IT_THEME='doubletime'
#export BASH_IT_THEME='doubletime_multiline'
#export BASH_IT_THEME='doubletime_multiline_pyonly'
#export BASH_IT_THEME='dulcie'
#export BASH_IT_THEME='duru'
#export BASH_IT_THEME='easy'
#export BASH_IT_THEME='elixr'
#export BASH_IT_THEME='emperor'
#export BASH_IT_THEME='envy'
#export BASH_IT_THEME='essential'
#export BASH_IT_THEME='font'
#export BASH_IT_THEME='gallifrey'
#export BASH_IT_THEME='gitline'
#export BASH_IT_THEME='hawaii50'
#export BASH_IT_THEME='iterate'
#export BASH_IT_THEME='kitsune'
#export BASH_IT_THEME='liquidprompt'
#export BASH_IT_THEME='luan'
#export BASH_IT_THEME='mairan'
#export BASH_IT_THEME='mbriggs'
#export BASH_IT_THEME='metal'
#export BASH_IT_THEME='minimal'
#export BASH_IT_THEME='modern'
#export BASH_IT_THEME='modern-t'
#export BASH_IT_THEME='modern-time'
#export BASH_IT_THEME='morris'
#export BASH_IT_THEME='n0qorg'
#export BASH_IT_THEME='newin'
#export BASH_IT_THEME='norbu'
#export BASH_IT_THEME='nwinkler'
#export BASH_IT_THEME='nwinkler_random_colors'
#export BASH_IT_THEME='parrot'
#export BASH_IT_THEME='pete'
#export BASH_IT_THEME='powerline'
#export BASH_IT_THEME='powerline-multiline'
#export BASH_IT_THEME='powerline-naked'
export BASH_IT_THEME='powerline-plain'
export POWERLINE_PROMPT="scm cwd"
#export BASH_IT_THEME='powerturk'
#export BASH_IT_THEME='primer'
#export BASH_IT_THEME='pro'
#export BASH_IT_THEME='pure'
#export BASH_IT_THEME='purity'
#export BASH_IT_THEME='radek'
#export BASH_IT_THEME='rainbowbrite'
#export BASH_IT_THEME='ramses'
#export BASH_IT_THEME='rana'
#export BASH_IT_THEME='redline'
#export BASH_IT_THEME='rjorgenson'
#export BASH_IT_THEME='robbyrussell'
#export BASH_IT_THEME='roderik'
#export BASH_IT_THEME='sexy'
#export BASH_IT_THEME='simple'
#export BASH_IT_THEME='sirup'
#export BASH_IT_THEME='slick'
#export BASH_IT_THEME='standard'
#export BASH_IT_THEME='tonka'
#export BASH_IT_THEME='tonotdo'
#export BASH_IT_THEME='tylenol'
#export BASH_IT_THEME='wanelo'
#export BASH_IT_THEME='zitron'
#export BASH_IT_THEME='zork'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# (Advanced): Change this to the name of the main development branch if
# you renamed it or if it was changed for some reason
# export BASH_IT_DEVELOPMENT_BRANCH='master'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true
# Set to actual location of gitstatus directory if installed
#export SCM_GIT_GITSTATUS_DIR="$HOME/gitstatus"
# per default gitstatus uses 2 times as many threads as CPU cores, you can change this here if you must
#export GITSTATUS_NUM_THREADS=8

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# If your theme use command duration, uncomment this to
# enable display of last command duration.
#export BASH_IT_COMMAND_DURATION=true
# You can choose the minimum time in seconds before
# command duration is displayed.
#export COMMAND_DURATION_MIN_SECONDS=1

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
