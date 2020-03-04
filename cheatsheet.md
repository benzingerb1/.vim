### sessions
:mksession ~/vim_sessions/mysession.vim
:source ~/vim_sessions/mysession.vim
Open with the -S option:
$ vim -S ~/vim_sessions/mysession.vim

### buffers

open existing buffer in split
:vert sb#

`:b <substring of open file>` will jump to the file you want!

useful for `index.html` and `style.css` editing, just type `:b css`


### marks

+ lowercase marks are for this buffer
+ uppercase marks are global

useful commands:
|--------|-----------------------------------|
| :marks | view marks                        |
| 'a     | jump to line of mark a            |
| `a     | jump to line and column of mark a |
|--------|-----------------------------------|


special marks:
|----|-------------------------------------------------------------------|
| `. | jump to last change in current buffer                             |
| `< | jump to beginning of last visual selection (useful for html tags) |
| `> | jump to end       of last visual selection (useful for html tags) |
|----|-------------------------------------------------------------------|

delete marks:
|------------|---------------------------------------------------|
| :delmarks  | delete mark a                                     |
| :delmarks! | delete all lowercase marks for the current buffer |
|------------|---------------------------------------------------|

### misc
`:scriptnames` will tell you what's been loaded

`c/word<CR>` will delete everything up to "word" and enter insert mode

check things that have been remapped:
`:verbose map <C-N>`
`:verbose nmap <C-R>`
`:verbose cmap <C-K>` command mode
`:verbose imap <C-O>`

check defaults:
`:h index`

where to add specific settings
~.vim/after/ftplugin/javacript.vim
~.vim/after/ftplugin/python.vim
read more in :h after and :ftplugin

I want to write FileType specific vimrc stuff:
`:h write-plugin`
