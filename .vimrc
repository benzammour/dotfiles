" Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'lervag/vimtex'	" latex plugin
Plugin 'morhetz/gruvbox'	" colorscheme
Plugin 'scrooloose/nerdtree'	" file manager
Plugin 'Xuyuanp/nerdtree-git-plugin'	" nerdtree git plugin
Plugin 'scrooloose/nerdcommenter'	" easier commenting
Plugin 'xuhdev/vim-latex-live-preview' " A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'mpetazzoni/autopreview.vim'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

" color scheme
colorscheme gruvbox
set background=dark
let g:gruvbox_gruvbox_contrast_dark = 'hard'
let g:gruvbox_gruvbox_contrast_light = 'hard'

syntax enable

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

filetype indent on "load file specific indent files

set number " enables line numbers
set showcmd " shows which command one is typing 
set cursorline " highlight current line
set wildmenu " Visual autocomplete for command menu
set nowrap " Doesn't wrap the lines at the end of the terminal
set showmatch " Matching brackets
set updatetime=250 " update time for livepreview

let NERDTreeShowHidden=1	" show hidden files?
let g:NERDTreeWinSize=20
silent! nmap <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

let g:livepreview_previewer = 'okular'	" livepreview pdf viewer
