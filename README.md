# .vim

### Vim settings

+ Cursor changes between insert mode and normal mode. [StackOverflow](https://stackoverflow.com/a/42118416)
+ `<C-J>` and `<C-K>` will move line up and down (and if applicable, take you out of insert mode)
+ Leader key set to `<Space>`
+ Tab expands to 4 spaces

### vim-plug
[GitHub](https://github.com/junegunn/vim-plug)
Plugins are automatically pulled from GitHub.  

+ Reload .vimrc and run `:PlugInstall` to install updates. 
+ `PlugClean` removes plugins you delete or comment out, `PlugClean!` removes without (y/n) prompt
+ `PlugUpdate` will update installed packages when you change settings in vimrc
`sytnax enable` is automatically executed by vim-plug

---

### onedark.vim
[GitHub](https://github.com/joshdick/onedark.vim)

---

### Emmet-vim
[GitHub](https://github.com/mattn/emmet-vim)
Emmet's leader key is mapped to `<C-N>` with the following line:

```
let g:user_emmet_leader_key='<C-N>'
```

---

### NERDTree
[GitHub](https://github.com/scrooloose/nerdtree)
Mapped to toggle on `<F6>` key, loaded "on-demand" by vim-plug

---

### NERD Commenter
[GitHub](https://github.com/scrooloose/nerdcommenter)
This uses `<Leader>` heavily, which I've set to `<Space>`. 

The following line adds a space between the comment delimiter and the comment:

```
let g:NERDSpaceDelims = 1
```

---

### vim-polyglot
[GitHub](https://github.com/sheerun/vim-polyglot)
This helps color the syntax for different file types. 
Turn off polyglot for markdown because it's a lot uglier than native vim/onedark colors:

```
let g:polyglot_disabled = ['markdown']
```

---

### Asynchronous Lint Engine (ALE)
[GitHub](https://github.com/w0rp/ale)
This uses linters that already exist in your global path.  Getting those linters set up is a different challenge

**Quick guide for [phpcs](https://github.com/squizlabs/PHP_CodeSniffer/):**
*Note: phpcs seems like it has an issue with Ale, somebody already submitted a [ticket](https://github.com/w0rp/ale/issues/1867)*
Install composer, then run:

```
composer global require "squizlabs/php_codesniffer=*"
```

run `phpcs -e` to see the current standard, `phpcs -i` to see the available standards.  Run the following to get the standard we want, [PSR-2](https://www.php-fig.org/psr/psr-2/):

```
phpcs --config-set default_standard PSR2
```

---

### Other tricks

`:qall` to quit all windows at once
[You Don't Need Plugins](https://www.youtube.com/watch?v=XA2WjJbmmoM)
for HTML: `cit` change inner tag, it works if you're inside the tag definition and not just between opening and closing tags
you can verb a search
`c/word<CR>` will delete everything up to "word" and enter insert mode
`:scriptnames` will tell you what's been loaded
check things that have been remapped:
`:verbose map <C-N>`
`:verbose nmap <C-R>`
`:verbose cmap <C-K>` command mode
`:verbose imap <C-O>`
check defaults:
`:h index`
open a terminal (this is probably how I'm going to test a script without dropping my current view of the code):
`:terminal`
setlocal buffer:
`:setlocal relativenumber`

where to add specific settings
~.vim/after/ftplugin/javacript.vim
~.vim/after/ftplugin/python.vim
read more in :h after and :ftplugin

I want to write FileType specific vimrc stuff:
`:h write-plugin`
