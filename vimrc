" Reload .vimrc and :PlugInstall to install plugins.
" :PlugUpdate will change package settings
" :PlugClean! will remove plugins missing from call plug()
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'kadekillary/Turtles'
Plug 'mattn/emmet-vim'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'dhruvasagar/vim-table-mode'
" Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'google/vim-searchindex'
Plug 'vim-scripts/dbext.vim'
Plug 'junegunn/vim-plug'
call plug#end()

" set diffopt color
set diffopt=iwhite

" When doing auto-complete
" Enter will select the option without leaving insert mode
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Set plugin variables "
syntax enable
set termguicolors
colorscheme onedark

" Emmet leader key WOW finding a leader key that works is such a pain
let g:user_emmet_expandabbr_key = '<C-@>'
let g:user_emmet_leader_key='<F12>'

" NERDTree
" noremap <F6> :NERDTreeToggle<CR>
" let NERDTreeShowLineNumbers=1
" autocmd FileType nerdtree setlocal relativenumber

" vim-polyglot
let g:polyglot_disabled = ['markdown', 'php', 'csv']
" this is from StanAngeloff/php.vim, which is coming form vim-polyglot
let php_sql_query = 1

" set cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" set move line behavior
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==
inoremap <C-k> <Esc>:m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Leader key mapped to space
let mapleader = "\<Space>"

" some vim basics
set number
set showcmd
set hlsearch
set nowrap
set splitbelow
set autoindent
set nocompatible " No compatible basically says don't bother pretending to be vi
set timeoutlen=1000 ttimeoutlen=50 " fix the annoying delay on esc
set ignorecase " prefix searches with \C to set them as case-sensitive
set nostartofline
" set smartcase " search with no capitals is case insensitive, with caps is case sensitive

" open VIMRC
noremap <F2> :tabnew $MYVIMRC<CR>
" toggle wordwrap
noremap <F3> :setlocal wrap!<CR>
" copy current buffer path to clipboard
noremap <silent> <F4> :let @+=expand("%:p")<CR>
" delete trailing spaces and fix indentation
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>gg=G<C-o><C-o>

nnoremap <leader>sv :source $MYVIMRC<CR>
" leader c means leader count
nnoremap <leader>c :%s///gn<CR>

" if file type is asp, set syntax to php
augroup asp_php
  autocmd!
  autocmd BufNewFile,BufRead *.asp set syntax=php
augroup END

" set tab behavior
set tabstop=2
set shiftwidth=2
set expandtab
set shiftround " when you tab and >> and <C-T> it will automatically round out to 4
set formatoptions-=cro " format options: don't automatically insert comments on i_o or i_O
set matchtime=1 " that moment where the {} match each other is a lot shorter, less annoying, read more-  :h 'sm
" let loaded_match_paren=1

" leader mappings
" clear line and enter input mode
nnoremap <leader>d ^d$a
" turn off highlights
noremap <silent> <leader>n :noh<CR>
noremap <leader>r :setlocal relativenumber!<CR>
" swap single and double quotes
noremap <leader>" :s/'/"/g<CR>:noh<CR><C-O>
noremap <leader>' :s/"/'/g<CR>:noh<CR><C-O>
" add single quotes around a string that's inside brackets []
nnoremap <leader>[ f[lviw<esc>a'<esc>bi'<esc>lel
" auto format json using jq (sudo apt install jq)
autocmd FileType json nnoremap <buffer> <silent> <leader>j :%!jq .<CR>

" this is for moving the cursor after expanding abbreviations
function! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc
" :autocmd FileType javascript iabbrev <silent> cl; console.log();<left><left><C-R>=Eatchar('\s')<CR>
iabbrev <silent> cl; console.log();<left><left><C-R>=Eatchar('\s')<CR>
iabbrev <silent> hr; echo "<hr>";<C-R>=Eatchar('\s')<CR>
iabbrev <silent> pre; echo "<pre>";<C-R>=Eatchar('\s')<CR>
iabbrev <silent> br; echo "<br>";<C-R>=Eatchar('\s')<CR>
iabbrev <silent> dd; ddump();<left><left><C-R>=Eatchar('\s')<CR>

nnoremap U :echo "TURN OFF CAPS LOCK"<CR>
nnoremap KJ :echo "TURN OFF CAPS LOCK"<CR>
nnoremap K :echo "TURN OFF CAPS LOCK"<CR>

" I'm going to try mouse resizing
set mouse=n
set ttymouse=xterm2
set encoding=UTF-8

" wrap words in quotes
nnoremap "" viw<esc>a"<esc>bi"<esc>lel
nnoremap "' viw<esc>a'<esc>bi'<esc>lel

" copy to clipboard
set clipboard=unnamedplus

" trying out a new binding recommendation, H and L will jump to end line/start
nnoremap L $
nnoremap H ^
nnoremap <C-l> zl
nnoremap <C-h> zh
inoremap <C-d> <nop>
inoremap <C-h> <nop>
inoremap <C-b> <nop>
inoremap <C-f> <nop>

let g:dbext_default_profile_AccidentReports = 'type=MYSQL:user=root:passwd=`cat /home/bbenzinger/pw.txt`:dbname=AccidentReports'
let g:dbext_default_profile_LMS = 'type=MYSQL:user=root:passwd=`cat /home/bbenzinger/pw.txt`:dbname=LMS'
let g:dbext_default_profile_pbs = 'type=MYSQL:user=root:passwd=`cat /home/bbenzinger/pw.txt`:dbname=pbs'
let g:dbext_default_profile_publicschoolworks = 'type=MYSQL:user=root:passwd=`cat /home/bbenzinger/pw.txt`:dbname=publicschoolworks'
let g:dbext_default_profile_SAR = 'type=MYSQL:user=root:passwd=`cat /home/bbenzinger/pw.txt`:dbname=SAR'
let g:dbext_default_buffer_lines = 50
let g:dbext_default_profile = 'publicschoolworks'

set path+=/php/includes
set path+=/php/smarty/templates
set path+=/var/www/Prosum
set path+=/var/www/Prosum/JSIncludes
set path+=**

let g:airline_powerline_fonts = 1

augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

" set the tags files
set tags=/php/includes/tags
set tags+=/var/www/Prosum/tags
set tags+=/php/smarty/templates/tags

" this is the function that runs after a execute dbext queries
function! DBextPostResult(db_type, buf_nr)
  :exe "normal \<C-W>="
  :set syntax=sql
endfunction
