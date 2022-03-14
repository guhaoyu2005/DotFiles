"ha0x9c7
"Vim configuration
"Ver 0.1
"
"Vundle Section Start

set nocompatible
set backspace=2
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" PLUGINS
Plugin 'molokai'
Plugin 'The-NERD-tree'

if has("unix")
    Plugin 'Valloric/YouCompleteMe' 
endif

Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Yggdroot/indentLine'
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
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set mouse=a

set textwidth=80
set nowrap
set colorcolumn=+1
augroup vimrc
   autocmd!
   autocmd ColorScheme * highlight ColorColumn guibg=#3E3D32 ctermbg=235
augroup END

set list
set listchars=tab:>-
if has("macunix")
	set guifont=Monaco:h14
else
	set guifont=Monospace\ 12
endif

if has("gui_running")
	if has("unix") 
	    if has("macunix")	
		set lines=70 columns=135
	    else
		set guifont=Dejavu\ Sans\ Mono\ Book\ 8 
		set lines=70 columns=135
	    endif
	else
		"set lines=35 columns=60
		set lines=70 columns=135
	endif
else
	if has("unix")
		if exists("+lines")
			"set lines=80
		endif
		if exists("+columns")
			"set columns=160
		endif
	else
		if exists("+lines")
				set lines=50
		endif
		if exists("+columns")
				set columns=80
		endif
	endif
endif

filetype on 
syntax on

let NERDTreeWinSize=20
let NERDTreeWinPos="left"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.o$']

let g:molokai_original=1

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Disable quote concealing in JSON files
let g:vim_json_conceal=0

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
"inoremap ( ()<LEFT>
"imap { {<CR>}<ESC>kA<CR>
imap { {<SPACE>}<ESC>hha

"inoremap { {<cr><cr>}<UP><ESC>$A

"Ctrl+c/v
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

"tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

"functions

