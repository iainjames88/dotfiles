set encoding=UTF-8             " Always use UTF-8 encoding
set number                     " Show line numbers
set backspace=indent,eol,start " Neuter the backspace for OS X
set scrolloff=10               " Keep 5 context lines when scrolling
set noswapfile                 " Disable swap files
set tabstop=4                  " Tab is 4 spaces
set softtabstop=4              " See 4 spaces as a tab
set autoindent                 " Indent new line same as previous
set shiftwidth=4               " Auto indent 4 spaces
set expandtab                  " Convert tabs to spaces
set showmatch                  " Show matching brackets.
set nocompatible               " Disable compatibility to old-time vi
set hlsearch                   " highlight search results
" set ignorecase               " Do case insensitive matching
" set wildmode=longest,list    " get bash-like tab completions

:let mapleader = ','          " Remap leader key to comma 

" Navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin()
Plug 'sonph/onehalf'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" NERDtree toggle
:nnoremap <leader>n :NERDTreeToggle<CR>
