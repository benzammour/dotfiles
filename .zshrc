export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"
export EDITOR='vim'
export LANG=en_US.UTF-8	# language env
export CC="/usr/bin/gcc"	# gcc
export CXX="/usr/bin/g++"	# g++
export JAVAFX="/usr/local/bin/javafx/lib"
export GPG_TTY=$(tty) #	GPG agent
export GOROOT="/usr/local/go" # location where go is located
export GOPATH=$HOME/Projects/Proj1  # location of working directory
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH   # PATH variable to access go system wide

# removes the username@computername in prompt
DEFAULT_USER=$USER

eval $(thefuck --alias)

ZSH_THEME="eastwood"
#ZSH_TMUX_AUTOSTART=true
#ZSH_TMUX_AUTOCONNECT=true
#ZSH_TMUX_AUTOQUIT=true
#ZSH_TMUX_FIXTERM=true

plugins=(
	z git sudo tmux
)

source ~/.aliases
source $ZSH/oh-my-zsh.sh
