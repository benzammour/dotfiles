export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# move configs according to XDG Base directory specification
export ZSH=$XDG_CONFIG_HOME/oh-my-zsh
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export VSCODE_EXTENSIONS="${XDG_DATA_HOME:-~/.local/share}/vscode/extensions"
export VIM=$HOME/.config/vim/
export MYVIMRC=$VIM/vimrc
export VIMRUNTIME=/usr/share/vim/vim81
export _Z_DATA=$XDG_DATA_HOME/z  # moves z scripts datafile
export URXVT_PERL_LIB=$HOME/.config/urxvt/pl-libs
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export TERM="rxvt-unicode-256color"
export TERMINAL="urxvt"
export EDITOR='vim'
export READER="zathura"
export FILE="ranger"
export BROWSER="firefox"
export GPG_TTY=$(tty) #	GPG agent

# locale settings
export LANG=en_US.UTF-8	
export LANGUAGE=en_US:en
export LC_MONETARY=de_DE.UTF-8
export LC_TIME=de_DE.UTF-8
export LC_NUMERIC=de_DE.UTF-8
export LC_ADDRESS=de_DE.UTF-8
export LC_TELEPHONE=de_DE.UTF-8

# disable less history
export LESSHISTFILE="-"

# language paths
export GOPATH="$XDG_DATA_HOME/go"
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$GOPATH/bin

[[ -f $XDG_CONFIG_HOME/Xmodmap ]] && xmodmap $XDG_CONFIG_HOME/Xmodmap
xrdb ${XDG_CONFIG_HOME:-$HOME/.config}/Xresources
