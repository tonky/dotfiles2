colo pablo
set nonumber
set hidden
set ignorecase
set completeopt+=noinsert
set completeopt+=noselect

let mapleader=";"

map <Leader>q :q<cr>
map <Leader>w :w<cr>
map <Leader>f :silent %!indent -kr -brf -i8 -st -<cr>
map <Leader>c :Shell gcc -Wall -lm -lpthread main.c -o /tmp/mc -xc - && /tmp/mc<cr>
map <Leader>d :!dmd main.d && ./main<cr>

nmap <M-h> :bp<CR>
nmap <M-l> :bn<CR>
nmap <M-n> <C-W>w

set tabstop=4
set shiftwidth=4
set expandtab
