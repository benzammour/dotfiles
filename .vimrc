" Vundle Setup {{{
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

Plugin 'lervag/vimtex'	" latex plugin
Plugin 'scrooloose/nerdtree'	" file manager
Plugin 'Xuyuanp/nerdtree-git-plugin'	" nerdtree git plugin
Plugin 'scrooloose/nerdcommenter'	" easier commenting
Plugin 'junegunn/goyo.vim'  " distraction free mode
Plugin 'terryma/vim-multiple-cursors'  " multiple cursors
Plugin 'udalov/kotlin-vim'	" kotlin syntax
Plugin 'tpope/vim-surround' " plugins for better management of parenthesis,
Plugin 'jiangmiao/auto-pairs'  " brackets, quotes etc
Plugin 'itchyny/lightline.vim'  " status line plugin

Plugin 'xuhdev/vim-latex-live-preview' " A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'mpetazzoni/autopreview.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'	" colorscheme

call vundle#end()
" }}}

"  File indentation {{{
filetype plugin indent on
filetype indent on " load file specific indent files

set autoindent
set noexpandtab  " uses tabs 
set tabstop=4
set shiftwidth=4
" }}}

" Color scheme {{{
colorscheme gruvbox
set background=dark
let g:gruvbox_gruvbox_contrast_dark = 'hard'
let g:gruvbox_gruvbox_contrast_light = 'hard'
" }}}

" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open folds by default
set foldnestmax=10      " 10 nested fold max
" space toggles folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
set modelines=1 " set vimrc as foldmethod = marker
" }}}

" General {{{ 
syntax enable
set history=500  " how many lines of history vim remembers
set autoread  " auto refresh when file is edited from third party
set hlsearch  " hightlight search results
set number " enables line numbers
set showcmd " shows which command one is typing 
set cursorline " highlight current line
set wildmenu " Visual autocomplete for command menu
set nowrap " Doesn't wrap the lines at the end of the terminal
set showmatch " Matching brackets
set mat=2  " tenths of a second to blink when matching brackets
set updatetime=250 " update time for livepreview
set noshowmode " doesn't show -- INSERT -- anymore 
" }}}

" NERDTree Config {{{
let NERDTreeShowHidden=1	" show hidden files?
let g:NERDTreeWinSize=20
silent! nmap <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
" }}}

" Livepreview Config {{{
let g:livepreview_previewer = 'okular'	" livepreview pdf viewer
" }}}

" Lightline Config {{{
set laststatus=2
" }}}

" sets vimrc folding
" vim:foldmethod=marker:foldlevel=0
