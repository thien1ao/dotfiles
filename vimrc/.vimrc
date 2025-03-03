set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set shiftwidth=4
set tabstop=4
set number
set ignorecase
set smartcase
set showmatch
set expandtab
set guifont=Iosevka\ 8
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set mouse=a
set smartcase
set showcmd
set showmode
rightb vert term
set showmatch
set t_Co=256
set pastetoggle=<F2>
set clipboard=unnamedplus
set hlsearch
set encoding=utf-8
set history=1000
set wildmenu
set wildmode=list:longest


" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'sheerun/vim-polyglot'
  Plug 'junegunn/fzf.vim'
  Plug 'nordtheme/vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'luochen1990/rainbow'
call plug#end()
" }}}

"Extensions---------------------------------------------------------------- {{{
let g:coc_global_extensions = [
			\'coc-clangd',
            \'coc-python',
            \]

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:airline_powerline_fonts = 1
let g:airline_theme = 'nord'
let g:rainbow_active = 1

"}}}

"Keymaps---------------------------------------------------------------- {{{
inoremap jk <Esc>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <C-Left> :vertical resize -2<CR>
noremap <C-Right> :vertical resize +2<CR>
noremap <C-Up> :resize -2<CR>
noremap <C-Down> :resize +2<CR>


map <C-n> :NERDTreeToggle<CR>
"}}}

"colorsheme"
colorscheme nord

