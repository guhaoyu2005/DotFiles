"ha0x9c7
"Vim configuration
"Ver 0.1
"
"Vundle Section Start

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" PLUGINS
Plugin 'molokai'
Plugin 'The-NERD-tree'
"Plugin 'Valloric/YouCompleteMe' 
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()
filetype plugin indent on
"Vundle Section End

"Editor cfgs
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

set laststatus=2
set t_Co=256
let g:Powerline_symbols= 'unicode'
set encoding=utf8

set number
set cursorline
set ruler
set tabstop=4
set autoindent
set smartindent

"set guifont=Monaco:h12
set guifont=Monospace\ 12
if has("gui_running")
		set lines=70 columns=135
else
		if exists("+lines")
				set lines=50
		endif
		if exists("+columns")
				set columns=80
		endif
endif

filetype on 
syntax on

let NERDTreeWinSize=20
let NERDTreeWinPos="left"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.o$']

let g:molokai_original=1

set encoding=utf-8

"Multi-lang
if has("multi_byte")
	set termencoding=utf-8
	set formatoptions+=mM
	set fencs=utf-8,gbk
	if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
		set ambiwidth=double
	endif
endif

"Keymaps normal
nmap  <F5> :NERDTreeToggle<cr>

"Keymaps insert
imap <c-a> <ESC>0i
imap <c-e> <ESC>$A
imap <c-q> <ESC>
inoremap ( ()<LEFT>
imap { {<CR>}<ESC>kA<CR>
"inoremap { {<cr><cr>}<UP><ESC>$A

"functions

