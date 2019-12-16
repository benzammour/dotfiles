export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH" # cargo (rust)
export PATH=/usr/local/opt/openvpn/sbin:$PATH # openvpn PATH
export PATH=$PATH:/usr/local/pgsql/bin # PostgreSQL PATH
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}" # Python 3.6
export PATH=/usr/local/opt/ruby/bin:$PATH	# ruby
export PATH="$HOME/Library/Haskell/bin:$PATH" # haskell

export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"
export EDITOR='vim'
export BROWSER="firefox"
export LANG=en_US.UTF-8	
export ZDOTDIR="$HOME/.config/zsh"

export JAVAFX=/usr/local/bin/javafx/lib
export CC=/usr/bin/gcc	# gcc
export CXX=/usr/bin/g++	# g++
export GPG_TTY=$(tty) #	GPG agent

# devkit
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=${DEVKITPRO}/devkitARM
export DEVKITARM=${DEVKITPRO}/devkitARM/bin
export DEVKITPPC=${DEVKITPRO}/devkitPPC
export PATH=${DEVKITPRO}/tools/bin:$PATH
export PATH=/opt/devkitpro/devkitARM/bin:$PATH

export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PATH="/usr/local/sbin:$PATH"
