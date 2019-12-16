ZSH_THEME="ben-eastwood"

plugins=(
	z git sudo 
)

# removes the username@computername in prompt
DEFAULT_USER=$USER

source $HOME/.config/aliases
source $ZSH/oh-my-zsh.sh
