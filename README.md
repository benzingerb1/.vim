# .vim

### Vim settings

+ Cursor changes between insert mode and normal mode. [StackOverflow](https://stackoverflow.com/a/42118416)
+ `<C-J>` and `<C-K>` will move line up and down (and if applicable, take you out of insert mode)
+ Leader key set to `<Space>`

+ `<F2>` opens vimrc
+ `<F3>` toggles local wrap
+ `<F4>` copies current buffer path to clipboard
+ `<F5>` formats indentation and removes trailing whitespace
+ `<F6>` ~~toggles NerdTree~~ began using buffers instead
+ `<F7>` opens cheatsheet.md, commands I'm working on internalizing

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
Remapped Emmet expand to `<C-@>`, I couldn't disable expand so I put it out of the way with `<F12>`

---

### vim-polyglot
[GitHub](https://github.com/sheerun/vim-polyglot)
This helps color the syntax for different file types. 
Turn off polyglot for several filetypes because the default seems to work better with my colorscheme

```
let g:polyglot_disabled = ['markdown']
```

