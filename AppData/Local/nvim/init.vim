call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline'

call plug#end()

let mapleader="z"
:imap jj <Esc>
:imap kj <Esc>
:imap kk <Esc>
:imap jk <Esc>
:imap fj <Esc>
:imap jf <Esc>

" Start NERDTree on Startup. If a file is specified, move the cursor to its window.  
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

inoremap <Leader>; <esc>A;<esc>
inoremap <Leader>. <esc>f)a.
inoremap <Leader>, <esc>f)a,<space>
inoremap <Leader>{ <esc>f)a<space>{<cr>

nnoremap <cr> o<Esc>
nnoremap <s-cr> O<Esc>

" system clipboard
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+

" system save
nmap <c-s> :w<cr>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)<cr>
nmap <leader>f  <Plug>(coc-format-selected)<cr>

source coc.vim
source neovide.vim
source screen.vim
