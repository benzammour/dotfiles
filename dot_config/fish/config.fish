set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_CACHE_HOME "$HOME/.cache"

set -gx URXVT_PERL_LIB $HOME/.config/urxvt/pl-libs

set -gx __NV_PRIME_RENDER_OFFLOAD 1
set -gx ___GLX_VENDOR_LIBRARY_NAME nvidia
set -gx __VK_LAYER_NV_optimus NVIDIA_only
set -gx VK_ICD_FILENAMES /usr/share/vulkan/icd.d/nvidia_icd.json

set -gxa PATH "$HOME/.local/bin"
set -gxa PATH "/sbin:/usr/sbin:/usr/local/sbin"
set -gxa PATH "/usr/local/go/bin"
set -gxa PATH "$HOME/go/bin"

set -gx VAULT "$HOME/Vault/"

#source "$HOME/.cargo/env"
xrdb $XDG_CONFIG_HOME/Xresources
setxkbmap eu

if status is-interactive
    set fish_greeting
    source ~/.config/aliases.fish
end

abbr -a -- cv "cd $VAULT/"
abbr -a -- ev "nvim $VAULT/"
abbr -a -- envi "nvim $HOME/.config/nvim/"
abbr -a -- efc "nvim $HOME/.config/fish"

# Launch TMUX on shell start:
#if status is-interactive
#    and not set -q TMUX
#    exec tmux
#end

direnv hook fish | source
