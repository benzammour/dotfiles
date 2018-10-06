# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# macos
#export ZSH=/Users/samirbenzammour/.oh-my-zsh
# linux
export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"
export EDITOR='vim'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'

prompt_zsh_showStatus () {
	local color='%F{255}'
	state=`osascript -e 'tell application "Spotify" to player state as string'`;
	if [ $state = "playing" ]; then
		artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
		track=`osascript -e 'tell application "Spotify" to name of current track as string'`;
		echo -n "%{$color%} $artist - $track " ; 
	fi	
}

# custom powerlevel9k settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status time dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(battery)

# color code list:
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='249'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

# folder icon config
POWERLEVEL9K_SUB_ICON='\UF07C'
POWERLEVEL9K_FOLDER_ICON='\UF07B'

# time config
POWERLEVEL9K_TIME_BACKGROUND="255"
POWERLEVEL9K_TIME_FOREGROUND="black"
POWERLEVEL9K_TIME_ICON=''

# battery config
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='88'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='255'
POWERLEVEL9K_BATTERY_LOW_ICON='/UF240'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='20'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'

POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='46'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='235'
POWERLEVEL9K_BATTERY_CHARGED_ICON='/UF240'
POWERLEVEL9K_BATTERY_CHARGED='blue'

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='178'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='235'
POWERLEVEL9K_BATTERY_CHARGING_ICON='/UF1E6'

POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='005'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='255'

POWERLEVEL9K_BATTERY_ICON='\UF1E6'

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
	thefuck
	tmux
	battery
	sublime
)

source $ZSH/oh-my-zsh.sh

# removes the username@computername in prompt
DEFAULT_USER=$USER

# Load z.sh script
. ~/scripts/z.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# GCC
export CC="/usr/bin/gcc"
export CXX="/usr/bin/g++"

eval $(thefuck --alias)

alias lg='lazygit'
alias tmntr_proj='cd ~/.config/tmuxinator'

# macOS
alias recurPull='~/Git/scripts/gitRecurPull.sh'
alias recurClean='~/Git/scripts/gitCleanUp.sh'
alias recurSign='~/Git/scripts/gitSign.sh'

alias photoEncrypt='~/Git/scripts/photoEncrypt.sh'
alias photoDecrypt='~/Git/scripts/photoDecrypt.sh'

# Linux
#alias recurPull='~/Git/scripts/gitRecurPull.sh'
#alias recurClean='~/Git/scripts/gitCleanUp.sh'
#alias recurSign='~/Git/scripts/gitSign.sh'
#
#alias photoEncrypt='~/Git/scripts/photoEncrypt.sh'
#alias photoDecrypt='~/Git/scripts/photoDecrypt.sh'

export GPG_TTY=$(tty)
