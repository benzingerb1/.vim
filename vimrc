" Reload .vimrc and :PlugInstall to install plugins.
" :PlugUpdate will change package settings
" :PlugClean! will remove plugins missing from call plug()
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'joshdick/onedark.vim'
    Plug 'Townk/vim-autoclose'
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'scrooloose/nerdcommenter'
    Plug 'sheerun/vim-polyglot'
    Plug 'w0rp/ale'
    Plug 'junegunn/vim-plug'
call plug#end()

" onedark
colorscheme onedark
" autoclose
let g:AutoClosePreserveDotReg = 0
" Emmet
let g:user_emmet_leader_key='<C-N>'
" NERDTree
map <F6> :NERDTreeToggle<CR>
" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
" vim-polyglot
let g:polyglot_disabled = ['markdown']

" set cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" set move line behavior
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==g
inoremap <C-k> <Esc>:m .-2<CR>==g
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


" Leader key mapped to space
let mapleader = "\<Space>"

" some vim basics
set number
set showcmd
set hlsearch
set nowrap

" set tab behavior
set tabstop=4
set shiftwidth=4
set expandtab
