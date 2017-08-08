colorscheme elflord
set background=dark

syntax enable

filetype plugin indent on

set expandtab
autocmd filetype html,xml set listchars-=tab:>.

let g:Tb_MaxSize=2                  " Tabbar max size

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]

nmap ,n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap ,N :NERDTreeClose<CR>

nnoremap ; :

inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i

vnoremap < <gv
vnoremap > >gv

cmap w!! w !sudo tee % >/dev/null
let mapleader = ","

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set number
set encoding=utf-8
set termencoding=utf-8
set directory=~/.vim/swap,.
set nowrap
set ch=1
" set foldenable
" set foldmethod=indent
" set foldmarker={,}
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set copyindent
set showmatch
set number
set ignorecase
set smartcase
set smarttab
set hls
set is
set novb
set textwidth=80
set ssop=blank,buffers,sesdir,folds,help,options,tabpages,winsize
set viminfo='50,<1000,s100,%
" set spell spelllang=en_us
set scrolloff=3
set browsedir=buffer
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set backupdir=/tmp
set directory=/tmp

nmap <Leader>r :GoRun %<cr>

set paste

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
call plug#end()
