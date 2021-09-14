call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'tpope/vim-surround' " Change surrounding braces, quotes, parenthesis etc
Plug 'scrooloose/nerdtree' " Navigate files
Plug 'ryanoasis/vim-devicons' " Icons in file viewer
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code completion
Plug 'cohama/lexima.vim' " Paren and brace completion.
Plug 'tpope/vim-fugitive' "  Git integration
Plug 'tpope/vim-rhubarb'
Plug 'vim-airline/vim-airline' " Bottom status stuff
Plug 'myusuf3/numbers.vim' " Line numbers for files
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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

" Numbers
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree', 'airline']

" Neovide
let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_remember_window_size = v:true

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

if has("win32")
	source $HOME/AppData/Local/nvim/coc.vim
else
	source ~/.config/nvim/coc.vim
endif
" source screen.vim
