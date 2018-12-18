" Reload .vimrc and :PlugInstall to install plugins.
" :PlugUpdate will change package settings
" :PlugClean! will remove plugins missing from call plug()
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'joshdick/onedark.vim'
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'sheerun/vim-polyglot'
    Plug 'Yggdroot/indentLine'
    Plug 'junegunn/vim-plug'
"    Plug 'jiangmiao/auto-pairs'
call plug#end()

" onedark
colorscheme onedark
" autoclose
let g:AutoClosePreserveDotReg = 0
" Emmet
let g:user_emmet_leader_key='<C-N>'
" NERDTree
map <F6> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
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
" just trying out relativenumber for fun note: I didn't like it
" set relativenumber
set showcmd
set hlsearch
set nowrap
set splitbelow
set autoindent
set nocompatible " No compatible basically says don't bother pretending to be vi
syntax enable

noremap <F2> :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
autocmd FileType javascript noremap <F4> :w<CR>:! node %<CR>
autocmd FileType python noremap <F4> :w<CR>:! python %<CR>

" set tab behavior
set tabstop=4
set shiftwidth=4
set expandtab
" when you tab and >> and <C-T> it will automatically round out to 4
set shiftround

" this looks like a neat rabbit hole:
" :h 'sm
" that moment where the {} match each other is a lot shorter, less annoying
set matchtime=2
" let loaded_match_paren=1
" testing out some mappings
nnoremap <leader>d ^d$a
noremap <leader>n :noh<CR>
noremap <leader>r :setlocal relativenumber!<CR>
function! Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunc
:autocmd FileType javascript iabbrev <silent> cl; console.log();<left><left><C-R>=Eatchar('\s')<CR>
" get rid of BS in insert mode until I can learn to backspace using <C-H>
inoremap <BS> <nop>
