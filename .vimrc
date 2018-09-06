" Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'morhetz/gruvbox'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on


"let g:gruvbox_gruvbox_contrast_dark = 'hard'

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
" Doesn't wrap the lines at the end of the terminal
set nowrap
 
" Matching brackets
set showmatch
 
" Search
set incsearch
set hlsearch
 
" Folding
set foldenable
set foldlevelstart=10

let g:clang_use_library = 1
" path to directory where library can be found
"let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
