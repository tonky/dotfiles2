colorscheme pablo
"colorscheme elflord
set background=dark

syntax enable

filetype plugin indent on

autocmd filetype html,xml set listchars-=tab:>.

autocmd filetype haskell nmap <Leader>r :!runhaskell %<cr>
autocmd filetype go nmap <Leader>r :GoRun %<cr>
autocmd filetype go nmap <Leader>t :GoTest<cr>

nnoremap ; :

nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>

inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap <S-TAB> <C-X><C-O>

vnoremap < <gv
vnoremap > >gv

cmap w!! w !sudo tee % >/dev/null
let mapleader = ","

set shell=zsh
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
set expandtab
set shiftwidth=4
set autoindent
set copyindent
set showmatch
set number
set ignorecase
set smartcase
" set smarttab
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*     " MacOSX/Linux
set backupdir=/tmp
set directory=/tmp

set paste

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'scrooloose/nerdtree'
"Plug 'jlanzarotta/bufexplorer'
"Plug 'drmingdrmer/vim-tabbar'
Plug 'vim-airline/vim-airline'

Plug 'fatih/vim-go'
call plug#end()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <C-b> :CtrlPBuffer<cr>

let g:Tb_MaxSize=2                  " Tabbar max size
let g:airline#extensions#tabline#enabled = 1


" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]

nmap ,n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap ,N :NERDTreeClose<CR>

" Go stuff
let g:go_fmt_command = "goimports"
