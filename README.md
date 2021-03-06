# Vim

Use MacVim as IDE for developing JavaScript/HTML/SCSS/Python/Ruby/CommonLisp/...

![YVim screenhhost](https://raw.github.com/dexteryy/YVim/master/screenshot.png)
 
## Install

```
git clone https://github.com/vinitkumar/.vim.git ~/.vim
cd ~/.vim
git submodule init
git submodule update
./install.sh
```

### Optional steps

* [Build DoctorJS](https://github.com/mozilla/doctorjs#requirements)
* [Build YouCompleteMe](https://github.com/dexteryy/YVim/blob/master/YCM.md) (NOTE: neocomplcache is used by default)

## Update

```
cd ~/.vim
git pull origin
./install.sh
```

## Some features and keybindings

* `,q` - `:q<cr>`
* `,rc` - `:tabe ~/.vim/vimrc<cr>`
* `,<space>` - `:noh<cr>:set nocrb<cr>`
* `<D-H>` - `<C-w>h`
* `<D-J>` - `<C-w>j`
* `<D-K>` - `<C-w>k`
* `<D-L>` - `<C-w>l`
* `<D-V>` - `<C-w>v`
* `<D-S>` - `<C-w>s`
* `<tab>` - `v>`
* `<c-tab>` - `v>`
* `<s-tab>` - `v<`
* `,tab` - :Tabularize
* `<F1>` - :help
* `<F2>` - :GundoToggle
* `<F3>` - :call MyLint()
* `<F4>` - :call MyMake()
* `<F5>` - :call QFSwitch()
* `<F6>` - :call LLSwitch()
* `<F7>` - :call MySetBreakPoint()
* `<F8>` - :call MySetLog()
* `<F9>` - :call MyRemoveBreakPoint()
* `,/` - :Ack
* `<D-C>` - :Clam
* `<D-p>` - :CtrlP
* `,be` - (normal open)  
* `,bs` - (force horizontal split open)  
* `,bv` - (force vertical split open)
* `,yr` - <ESC>:YRShow<cr>
* `,ss` - :SaveSession
* `,so` - :OpenSession
* `,sd` - :DeleteSession
* `,sc` - :CloseSession<cr>
* `,sv` - :ViewSession<cr>
* `,R` - quickrun
* `,r` - :MRU
* `,fb` - :FufBuffer<cr>
* `,ff` - :FufFile<cr>
* `,fd` - :FufDir<cr>
* `,fa` - :FufBookmark<cr>
* `,fm` - :FufAddBookmark<cr>
* `,fc` - :FufChangeList<cr>
* `,vp` - :VimpanelLoad default<cr>
* `,vl` - :VimpanelLoad
* `,nt` - :NERDTree<cr>
* `,nc` - <plug>NERDCommenterComment
* `,n<space>` - <plug>NERDCommenterToggle
* `,nm` - <plug>NERDCommenterMinimal
* `,ns` - <plug>NERDCommenterSexy
* `,ni` - <plug>NERDCommenterInvert
* `,nn` - <plug>NERDCommenterNest
* `,nu` - <plug>NERDCommenterUncomment
* `,nl` - <plug>NERDCommenterAlignLeft
* `,nb` - <plug>NERDCommenterAlignBoth
* `,mt` - Toggles ShowMarks on and off.
* `,mh` - Hides an individual mark.
* `,ma` - Hides all marks in the current buffer.
* `,mm` - Places the next available mark.
* `,cl` - :VCSVimDiff
* `,cv` - :VCSLog
* `,cd` - :VCSVimDiff
* `,tl` - <Plug>TaskList
* `,tb` - :TagbarToggle<CR>
* `,l` - slimv_leader
* `,<tab>` - :Sscratch<cr>
* `,cal` - : Vertically-split calendar
* `,caL` - : Horizontally-split calendar
* `,di` - to start DrawIt 
* `,ds` - to stop  DrawIt.

For auto-completion:

* `<Enter>`, `<Down>`     
* `<S-Enter>`, `<Up>`      

For snippets:

* `<tab>`     g:UltiSnipsExpandTrigger
* `<tab>`     g:UltiSnipsJumpForwardTrigger
* `<s-tab>`     g:UltiSnipsJumpBackwardTrigge

* `:SuperRetab 2 4`
* `:Matrix`

More features: 

See [vimrc](https://github.com/dexteryy/YVim/blob/master/vimrc) and [gvimrc](https://github.com/dexteryy/YVim/blob/master/gvimrc)

## Other scripts

* ["colors/yytextmate.vim" provides TextMate Blackboard theme](http://github.com/dexteryy/YVim/blob/master/colors/yytextmate.vim)
* [Compiler & debug plugin for Python](http://github.com/dexteryy/YVim/blob/master/ftplugin/python/yy-python.vim)
* [Compiler & debug plugin for JavaScript](http://github.com/dexteryy/YVim/blob/master/ftplugin/javascript/yy-js.vim)
* [snippets/javascript.snippets (for UltiSnips)](http://github.com/dexteryy/YVim/blob/master/snippets/javascript.snippets)
* [syntax/javascript.vim](http://github.com/dexteryy/YVim/blob/master/syntax/javascript.vim)

