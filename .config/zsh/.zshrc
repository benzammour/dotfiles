ZSH_THEME="ben-eastwood"

plugins=(z sudo)

# include hidden files in autocomplete
_comp_options+=(globdots)

HISTFILE=$ZDOTDIR/zsh_history

source $HOME/.config/aliases
source $ZSH/oh-my-zsh.sh
