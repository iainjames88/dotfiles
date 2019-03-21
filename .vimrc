" Show line numbers
set number

" Neuter backspace
set backspace=indent,eol,start

" Highlight search results
set hlsearch

" Keep 5 context lines when scrolling
set scrolloff=5

" No moar swap files
set noswapfile

" Tabs -> spaces stuff
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap leader key
:let mapleader = ','

" Highlight whole buffer
:nnoremap <leader>a ggVG

" Delete whole buffer
:nnoremap <leader>d ggdG

" Copy whole buffer
:nnoremap <leader>y ggVGY

" Switch to next buffer
:nnoremap <leader>bl :bnext<CR>

" Switch to previous buffer
:nnoremap <leader>bh :bprevious<CR>

" Close current buffer
:nnoremap <leader>bd :bdelete<CR>

" NERDtree toggle
:nnoremap <leader>n :NERDTreeToggle<CR>

" vim-plug ftw
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'crusoexia/vim-monokai'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vimwiki/vimwiki'
call plug#end()

"Colour scheme stuff
syntax enable
set background=dark
colorscheme monokai

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_monokai'
let g:airline_powerline_fonts = 1

