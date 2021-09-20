runtime! debian.vim
if $TERM =~# '256color' && ( $TERM =~# '^screen'  || $TERM =~# '^tmux' )
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
set termguicolors
set nocompatible
set autoindent
syntax on
syntax enable

set scrolloff=5
filetype plugin indent on

" Prevent incorrect backgroung rendering
let &t_ut=''

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
setlocal noswapfile
set bufhidden=hide
set number
set cursorline
set ruler
set shiftwidth=2
set softtabstop=2
set tabstop=2
set hlsearch
set noerrorbells
set magic
set smartindent
set backspace=indent,eol,start
map s nop
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
set wildmenu
map J 5j
map K 5k

map tu :tabe<CR>
map tn :+tabnext<CR>
map tp :-tabnext<CR>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

Plug 'preservim/nerdtree'

call plug#end()

colorscheme snazzy
map ff :NERDTreeToggle<CR>
