PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$HOME/.apps/telegram

export ZSH=~/.oh-my-zsh
export ZDOTDIR=$HOME/.config/zsh

export TERM="rxvt-unicode-256color"
export TERMINAL="urxvt"
export EDITOR='vim'
export READER="zathura"
export FILE="ranger"
export BROWSER="firefox"
export GPG_TTY=$(tty) #	GPG agent

export URXVT_PERL_LIB=$HOME/.config/urxvt/pl-libs

export LANG=en_US.UTF-8	
export LANGUAGE=en_US:en
export LC_MONETARY=de_DE.UTF-8
export LC_TIME=de_DE.UTF-8
export LC_NUMERIC=de_DE.UTF-8
export LC_ADDRESS=de_DE.UTF-8
export LC_TELEPHONE=de_DE.UTF-8

# vim custom variables
export VIM=$HOME/.config/vim/
export MYVIMRC=$VIM/vimrc
export VIMRUNTIME=/usr/share/vim/vim81

# disable less history
export LESSHISTSIZE=-

# language paths
export GOPATH="$HOME/.fs/projects/go"
