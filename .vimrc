" Plugin enabless will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
" includes latex plugin for vim
Plug 'lervag/vimtex'
" includes color scheme gruvbox
Plug 'morhetz/gruvbox'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:gruvbox_gruvbox_contrast_dark = 'hard'

"colorscheme badwolf
colorscheme gruvbox

syntax enable

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
" enables line numbers
set number
" shows which command one is typing 
set showcmd
" highlight current line
set cursorline
"load file specific indent files
filetype indent on
" Visual autocomplete for command menu
set wildmenu
 
" Matching brackets
set showmatch
 
" Search
set incsearch
set hlsearch
 
" Folding
set foldenable
set foldlevelstart=10
