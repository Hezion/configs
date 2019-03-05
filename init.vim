set rtp+=/usr/local/opt/fzf

call plug#begin('~/.local/share/nvim/plugged')
Plug 'moby/moby' , {'rtp': '/contrib/syntax/vim/'}
Plug 'scrooloose/nerdcommenter'
Plug 'TaDaa/vimade'
Plug 'mhinz/vim-signify'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'zef/vim-cycle'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-repeat'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
call plug#end()

set termguicolors
set number
set numberwidth=5
set ignorecase
set smartcase
set ignorecase
set smartcase
set title
set undofile
set cursorline
set wildmode=longest:full,full
set rnu
set hidden

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'php': ['phpmd']
\}
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_php_phpcs_standard = 'PSR2'

let mapleader="\<space>"
noremap <leader>m zf
noremap <leader>n za
noremap <leader>b :set nu!<bar>set rnu!<cr>
map <c-n> <c-w><
map <c-m> <c-w>>
map <Leader>y "*y
map <Leader>p "*p

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

colorscheme gruvbox

let g:loaded_python_provider = 1
let g:python3_host_prog = '/usr/local/bin/python3'
