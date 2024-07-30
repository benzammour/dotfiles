alias lg 'lazygit'

# git custom aliases
alias g 'git' 
alias ga 'git add' 
alias gc 'git commit -v' 
alias gp 'git push' 
alias gl 'git pull' 
alias gb 'git branch' 
alias glog 'git log --oneline --decorate --graph' 
alias gcl 'git clone'

# git custom commands
alias grl 'find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;' 
alias ggc 'find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} gc \;' 
alias gsign 'find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} config commit.gpgsign true \;' 

# general system alias
alias v 'vim' 
alias sv 'sudo vim' 
alias x 'exit' 
alias cp 'cp -iv' 
alias mv 'mv -iv' 
alias ll 'ls -lF' 
alias la 'ls -A'
alias l 'ls -lah'

alias xclip 'xclip -selection clipboard'
alias sup 'sudo apt update -y; sudo apt upgrade -y; sudo apt autoremove -y; sudo apt autoclean -y; sudo apt autopurge -y; sudo apt clean -y'

