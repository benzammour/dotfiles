# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# macos
#export ZSH=/Users/samirbenzammour/.oh-my-zsh
# linux
export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"
export EDITOR='vim'
export LANG=en_US.UTF-8	# language env
export CC="/usr/bin/gcc"	# gcc
export CXX="/usr/bin/g++"	# g++
export JFX="$HOME/Documents/javafx/lib"
export GPG_TTY=$(tty) #	GPG agent

# go variables 
export GOROOT=/usr/local/go	# location where go is located
export GOPATH=$HOME/Projects/Proj1	# location of working directory
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH	# PATH variable to access go system wide

# start tmux at start of new terminal session
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	exec tmux
fi

# zsh theme & powerlevel mode
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

# custom powerlevel9k settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true	# 2 line prompt
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir vcs)	# left items
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()	# right items

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='249'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3	# only show the last 3 folders

# color code list: `for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"`


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	z
	git
	man
	osx
	shrink-path
)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

# removes the username@computername in prompt
DEFAULT_USER=$USER

# Load z.sh script
. ~/Git/scripts/z.sh

eval $(thefuck --alias)
