colorscheme badwolf
syntax enable

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
" Zeilennummern
set number
" Zeigt an was man tippt
set showcmd
" highlight current line
set cursorline
"load file specific indent files
filetype indent on
" Visual autocomplete for command menu
set wildmenu
" Redraw if needed
set lazyredraw
 
" Matching brackets
set showmatch
 
" Search
set incsearch
set hlsearch
 
" Folding
set foldenable
set foldlevelstart=10
 
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
 
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'lervag/vimtex'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
