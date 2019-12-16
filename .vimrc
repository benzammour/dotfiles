" Vundle Setup {{{
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

Plugin 'scrooloose/nerdtree'	" file manager
Plugin 'Xuyuanp/nerdtree-git-plugin'	" nerdtree git plugin
Plugin 'scrooloose/nerdcommenter'	" easier commenting
Plugin 'junegunn/goyo.vim'  " distraction free mode
Plugin 'terryma/vim-multiple-cursors'  " multiple cursors
Plugin 'udalov/kotlin-vim'	" kotlin syntax
Plugin 'tpope/vim-surround' " plugins for better management of parenthesis,
Plugin 'jiangmiao/auto-pairs'  " brackets, quotes etc
Plugin 'itchyny/lightline.vim'  " status line plugin

Plugin 'morhetz/gruvbox'	" colorscheme

call vundle#end()
" }}}

"  File indentation {{{
filetype plugin indent on
filetype indent on " load file specific indent files

set autoindent
set expandtab  " uses tabs 
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
set wrap " Wraps the lines at the end of the terminal
set linebreak
set showmatch " Matching brackets
set mat=2  " tenths of a second to blink when matching brackets
set updatetime=250 " update time for livepreview
set noshowmode " doesn't show -- INSERT -- anymore 
" }}}

" Arrowkey Remap {{{ 
" Remove newbie crutches in Command Mode
"cnoremap <Down> <Nop>
"cnoremap <Left> <Nop>
"cnoremap <Right> <Nop>
"cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
" }}}

" NERDTree Config {{{
let NERDTreeShowHidden=1	" show hidden files?
let g:NERDTreeWinSize=20
silent! nmap <F2> :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
let g:NERDTreeWinSize=30
" }}}

" Livepreview Config {{{
let g:livepreview_previewer = 'okular'	" livepreview pdf viewer
" }}}

" Lightline Config {{{
set laststatus=2
" }}}

" Goyo Config {{{
let g:goyo_width = 120

function! s:goyo_enter()
  set showmode
  set number

  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
" }}}

" Autostart Config {{{
"autocmd vimenter * NERDTree
" }}}

silent! map <F3> :Goyo <CR>

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" sets vimrc folding
" vim:foldmethod=marker:foldlevel=0
