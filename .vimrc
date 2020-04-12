set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set	foldmethod=indent
set	foldlevel=99

nnoremap <space> za

" Plugin	'tmhedberg/SimpylFold'

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=150 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


" Plugin 'vim-scripts/indentpython.vim'
let g:solarized_termcolors=256
let g:solarized_termtrans=1

highlight BadWhitespace ctermbg=red
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
" Plugin 'nvie/vim-flake8'
" Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'benmills/vimux'

"let g:ycm_server_python_interpreter = '/Users/darpanbiswas/Python3.6/anaconda3/bin/python'

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	set background=dark
	colorscheme solarized 
endif

let python_highlight_all=1
syntax on

"let g:syntastic_python_checkers = ['flake8']

call togglebg#map("<F5>")

set number
set relativenumber
"set list
"set listchars=tab:▸\ ,eol:¬,trail:…,extends:…,precedes:…
"set listchars=tab:.\ ,eol:¬,trail:…,extends:…,precedes:…
"set listchars=tab:\ \ ,eol:¬,trail:…,extends:…,precedes:…
"set listchars=trail:…,extends:…,precedes:…
"set listchars=tab:..,trail:_,extends:>,precedes:<,nbsp:~
set showbreak=»
hi statusLine ctermbg=3 ctermfg=4

" setup for javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"DARPANBISWAS settings
hi SpecialKey None
set cursorline
set cursorcolumn
