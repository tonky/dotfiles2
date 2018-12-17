colo pablo
set number
set hidden
set ignorecase
" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

let mapleader=";"

map <Leader>q :q<cr>
map <Leader>w :w<cr>
map <Leader>f :silent %!indent -kr -brf -i8 -st -<cr>
" map <Leader>c :Shell gcc -lm -Wall -Wextra -lpthread main.c -o /tmp/mc -xc - && /tmp/mc<cr>
map <Leader>c :Shell gcc -Wall -lm -lpthread main.c -o /tmp/mc -xc - && /tmp/mc<cr>
map <Leader>d :!dmd main.d && ./main<cr>

map <M-h> :bp<cr>
map <M-l> :bn<cr>

set tabstop=4
set shiftwidth=4
set noexpandtab

" Path to python interpreter for neovim
let g:python3_host_prog  = '/usr/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 0

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

call plug#begin('~/.vim/plugged')

Plug 'zah/nim.vim'
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'idanarye/vim-dutyl'
Plug 'landaire/deoplete-d'
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'

" if has('nvim')
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
" Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-go', { 'do': 'make'}

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

function! s:ExecuteInShell(command)
  let command = join(map(split(a:command), 'expand(v:val)'))
  let winnr = bufwinnr('^' . command . '$')
  silent! execute  winnr < 0 ? 'botright vnew ' . fnameescape(command) : winnr . 'wincmd w'
  setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap number
  echo 'Execute ' . command . '...'
  silent! execute 'silent %!'. command
  silent! execute 'resize '
  silent! redraw
  silent! execute 'au BufUnload <buffer> execute bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
  silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>'
  echo 'Shell command ' . command . ' executed.'
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)

let g:deoplete#sources#d#dcd_server_autostart = 1
let g:rustfmt_autosave = 0
let g:deoplete#sources#rust#racer_binary='~/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/usr/lib/rustlib/src/rust/src/'

let g:go_fmt_command = "goimports"
au FileType go nmap <leader>t :GoTest -short<cr>
au FileType go nmap <leader>r :GoRun<cr>
