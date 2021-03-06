"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: Dexter.Yy <dexter.yy at gmail.com>
" Last Change: $LastChangedDate$ $Rev$
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" default
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set history=400
if has('mouse')
  set mouse=a
endif
set backspace=indent,eol,start
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

map Q gq
inoremap <C-U> <C-G>u<C-U>

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("autocmd")
  filetype plugin indent on
  augroup vimrcEx
  au!
  autocmd FileType text setlocal textwidth=78
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'L9'
Bundle 'jaxbot/github-issues.vim'
Bundle 'junegunn/seoul256.vim'
Bundle 'tpope/vim-scriptease'
Bundle 'tomasr/molokai'
Bundle 'scrooloose/syntastic'
Bundle 'FuzzyFinder'
Bundle 'bufexplorer.zip'
Bundle 'mru.vim'
Bundle 'ctrlp.vim'
Bundle 'ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'heavenshell/vim-jsdoc'
Bundle 'mihaifm/vimpanel'
"Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdtree'
Bundle 'The-NERD-Commenter'
Bundle 'Gundo'
Bundle 'SirVer/ultisnips'
Bundle 'vinitkumar/vim-tomorrow-theme'
Bundle 'JazzCore/neocomplcache-ultisnips'
Bundle 'Shougo/neocomplcache.vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'myusuf3/numbers.vim'
Bundle 'justincampbell/vim-eighties'
Bundle 'terryma/vim-expand-region'
"Bundle 'teramako/jscomplete-vim'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rails'
Bundle 'b4winckler/vim-objc'
Bundle 'eraserhd/vim-ios'
"Bundle 'junegunn/vim-scroll-position'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'thinca/vim-quickrun'
Bundle 'vcscommand.vim'
Bundle 'fugitive.vim'
Bundle 'kablamo/vim-git-log'
Bundle 'TaskList.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ShowMarks7'
Bundle 'matchit.zip'
Bundle 'delimitMate.vim'
"Bundle 'jiangmiao/auto-pairs'
Bundle 'surround.vim'
Bundle 'YankRing.vim'
Bundle 'sjl/clam.vim'
Bundle 'scratch.vim'
Bundle 'cecutil'
Bundle 'DrawIt'
Bundle 'mattn/calendar-vim'
Bundle 'klen/python-mode'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ntpeters/vim-better-whitespace' 
Bundle 'fs111/pydoc.vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'jpalardy/vim-slime'
Bundle 'vim-scripts/LanguageTool'
filetype plugin indent on  

" vim slime 
let g:slime_target = "tmux"

""""""""
"fix paste 
"""""""""
set pastetoggle=<F10>




"""""""""""""""""
" Pydoc settings
"""""""""""""""""
let g:pydoc_cmd = 'python -m pydoc'
let g:pydoc_open_cmd = 'vsplit' 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:let g:session_autosave = 'no'

" Platform
function! MySys()
	if has("win32") || has("win64")
    	return "windows"
	elseif has("mac")
		return "mac"
	else
    	return "linux"
  	endif
endfunction

let g:github_access_token = ''

"set indent for javascript 
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"if MySys() == 'mac' || MySys() == 'linux'
	"set shell=/bin/bash\ -l
"endif

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" Move Backup Files to ~/.vim/backups/
set backupdir=~/.vim/backups
set dir=~/.vim/backups
set nobackup 
"set nowritebackup 

set undodir=~/.vim/undos
set undofile

set laststatus=2   " Always show the statusline
set ambiwidth=single

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set nowrap
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.orig,*.pyc
set matchpairs=(:),{:},[:]
set whichwrap=b,s,<,>,[,]
set foldmethod=marker
set diffopt+=iwhite,vertical " 忽略缩进的差异
"set cursorbind
"set gdefault

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_running") || has("gui_macvim")
    set background=dark
    colorscheme Tomorrow-Night-Blue 
    let g:colors_name="Tomorrow-Night-Blue"

elseif
    colorscheme Tomorrow-Night-Blue
    let g:colors_name="Tomorrow-Night-Blue"
	"colorscheme slate
endif

if MySys() == "mac"
	set guifont=Monaco:h12
	set guifontwide=Hei_Regular:h12
elseif MySys() == "linux"
	set guifont=Monospace
endif

set anti
set linespace=2 
set cursorline
"set number
set rnu
set numberwidth=4
set equalalways
set guitablabel=%t

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype and syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:javascript_enable_domhtmlcss=1
let g:xml_use_xhtml = 1 "for xml.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MacVim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_macvim")

	"set columns=171
	"set lines=58
	"winpos 52 42 

	let macvim_skip_cmd_opt_movement = 1
	let macvim_hig_shift_movement = 1

	set transparency=0
	set guioptions-=T "egmrt
	"set guioptions+=b 

endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"autocmd! bufwritepost .vimrc source ~/.vimrc
"autocmd! bufwritepost vimrc source ~/.vim/vimrc
autocmd! bufwritepost vimrc Runtime

"let g:jslint_neverAutoRun=1


if exists('+autochdir')
	set autochdir
else
	autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif


" filetype
autocmd BufNewFile,BufRead *.vm setlocal ft=html
autocmd BufNewFile,BufRead *.xul setlocal ft=xml
autocmd BufNewFile,BufRead *.as	setlocal ft=actionscript
autocmd BufNewFile,BufRead jquery.*.js set ft=javascript syntax=jquery
autocmd BufNewFile,BufRead *.pac setlocal ft=javascript
autocmd BufNewFile,BufRead *.ypac setlocal ft=yaml
autocmd BufNewFile,BufRead *.md setlocal ft=markdown
"autocmd BufNewFile,BufRead *.json setlocal ft=javascript
autocmd BufNewFile,BufRead *.scss set ft=scss


" language support
autocmd FileType javascript setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 textwidth=79
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType text setlocal wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" sudo save
command W :w ! sudo tee %

:command! -nargs=+ SuperRetab call SuperRetab(<f-args>)

function! SuperRetab(p, n)
    execute 'setl et! ts='.a:p.' sw='.a:p.' sts='.a:p
    retab!
    execute 'setl et ts='.a:n.' sw='.a:n.' sts='.a:n
    retab
endfunction

" for make & debug

function! QFSwitch() " toggle quickfix window
	redir => ls_output
		execute ':silent! ls'
	redir END

	let exists = match(ls_output, "[Quickfix List")
	if exists == -1
		execute ':copen'
	else
		execute ':cclose'
	endif
endfunction

function! LLSwitch() " toggle location list window
	redir => ls_output
		execute ':silent! ls'
	redir END

	let exists = match(ls_output, "[Location List")
	if exists == -1
		execute ':lopen'
	else
		execute ':lclose'
	endif
endfunction

function! MyMake()
	exe 'call ' . b:myMake . '()'
endfunction

function! MyLint()
	exe 'call ' . b:myLint . '()'
endfunction

function! MyDebug()
	exe 'call ' . b:myDebug . '()'
endfunction

function! MySetBreakPoint()
	exe 'call ' . b:mySetBreakPoint . '()'
endfunction

function! MySetLog()
	exe 'call ' . b:mySetLog. '()'
endfunction

function! MyRemoveBreakPoint()
	exe 'call ' . b:myRemoveBreakPoint . '()'
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" macro
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $static.getURL to uidev.tudou.com
let @u = "0y$opk,n j0f$df'ihttp://uidev.tudou.comf'xx"
" copy current file to uidev.tudou.com
let @p = ":!cp % /Volumes/ui.tudou.com/%:p:h:h:t/%:p:h:t/"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=","
let g:mapleader=","

"map <leader>, ,

map <silent> <leader>rc :tabe ~/.vim/vimrc<cr>
map <leader>q :q<cr>

nnoremap <leader><space> :noh<cr>:set nocrb<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
map <D-H> <C-h>
map <D-J> <C-j>
map <D-K> <C-k>
map <D-L> <C-l>

nnoremap <D-V> <C-w>v
nnoremap <D-S> <C-w>s

nnoremap <leader><tab> :Sscratch<cr>



" for make & debug
"noremap <silent> <F1> <ESC>:call LLSwitch()<CR>
noremap <silent> <F2> <ESC>:GundoToggle<CR>
noremap <silent> <F3> <ESC>:call MyLint()<CR>
noremap <silent> <F4> :call MyMake()<CR>
noremap <silent> <F5> <ESC>:call QFSwitch()<CR>
noremap <silent> <F6> <ESC>:call LLSwitch()<CR>
noremap <silent> <F7> :call MySetBreakPoint()<CR>
noremap <silent> <F8> :call MySetLog()<CR>
noremap <silent> <F9> :call MyRemoveBreakPoint()<CR>


nmap <tab> 		v>
nmap <c-tab>    v>
nmap <s-tab> 	v<
vmap <tab> 		>gv 
vmap <c-tab> 	>gv 
vmap <s-tab> 	<gv

nnoremap / /\v
vnoremap / /\v

"inoremap ( ()<ESC>i
"inoremap { {}<ESC>i
"inoremap [ []<ESC>i
"inoremap " ""<ESC>i
"inoremap < <><esc>i
"inoremap ) <c-r>=ClosePair(')')<cr>
"inoremap } <c-r>=ClosePair('}')<cr>
"inoremap ] <c-r>=ClosePair(']')<cr>
"inoremap > <c-r>=ClosePair('>')<cr>

"inoremap <expr><CR> StructStart() ? '<CR><ESC>kA<CR>' : '<CR>'

" map cmd to ctrl
if has("gui_macvim")
	imap <D-c> <C-c>	"快速结束插入模式
	map <D-y> <C-y>
	map <D-e> <C-e>
	map <D-f> <C-f>
	map <D-b> <C-b>
	map <D-u> <C-u>
	map <D-d> <C-d>
	map <D-w> <C-w>
	map <D-r> <C-r>
	map <D-o> <C-o>
	map <D-i> <C-i>
	map <D-g> <C-g>
	map <D-]> <C-]>
	cmap <D-d> <C-d>
	imap <D-e> <C-e>
	imap <D-y> <C-y>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>/ :Ack 

let g:flake8_ignore = 'E401,E501'

" Syntastic
let g:syntastic_python_checkers = ['flake8', 'pep8', 'pylint']
let g:syntastic_python_flake8_args = '--ignore="E401,E501"'
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_css_checkers = ['csslint']
"let g:syntastic_csslint_options = '--warnings=none --errors=box-model'
let g:syntastic_lisp_checkers = ['clisp']
let g:syntastic_html_tidy_blocklevel_tags=['x-card', 'x-part', 'ck-card', 'ck-part']
let g:syntastic_always_populate_loc_list = 1

" Indent Guides
let g:indent_guides_auto_colors = 0
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:ragtag_global_maps = 1

" vim-expand-region
vmap K <Plug>(expand_region_expand)
vmap J <Plug>(expand_region_shrink)

" Tabular
map <leader>tab :Tabularize / = <cr>

" clam.vim
map <D-C> :Clam 

"vim-template 
let g:template_no_autocmd = 1


" session
let g:session_autoload = 'no'
nnoremap <leader>ss :SaveSession
nnoremap <leader>so :OpenSession
nnoremap <leader>sd :DeleteSession
nnoremap <leader>sc :CloseSession<cr>
nnoremap <leader>sv :ViewSession<cr>

" bufExplorer setting
let g:bufExplorerSortBy='mru'
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 30  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window.
let g:bufExplorerMaxHeight=25
let g:bufExplorerResize=1
"autocmd BufWinEnter \[Buf\ List\] setl nonumber

" 默认键映射 <leader>bv :VSBufExplorer
"

let g:quickrun_no_default_key_mappings = 1
silent! map <unique> <Leader>R <Plug>(quickrun)

" tasklist
nmap <silent> <leader>tl <Plug>TaskList

" tagbar
let g:tagbar_width = 20
let g:tagbar_singleclick = 1
let g:tagbar_iconchars = ['▾', '▸']
nnoremap <leader>tb :TagbarToggle<CR>
"autocmd FileType * nested :call tagbar#autoopen(0)

" winManager setting
"let g:winManagerWindowLayout="BufExplorer,FileExplorer|taglist" 
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"nmap <silent> <leader>wm :WMToggle<cr> 

" netrw setting
let g:netrw_winsize = 30
"nmap <silent> <leader>fe :Sexplore!<cr>

" NERDTree setting
"let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 20
nmap <silent> <leader>nt :call OpenNERDTree()<cr>

function! OpenNERDTree()
    let tmp = g:eighties_minimum_width
    let g:eighties_minimum_width = 20
    :NERDTree
    let g:eighties_minimum_width = tmp
endfunction

" Most Recently Used (MRU)
nmap <silent> <leader>r :MRU<cr>

" FuzzyFinder setting
nmap <leader>fb :FufBuffer<cr>
nmap <leader>ff :FufFile<cr>
nmap <leader>fd :FufDir<cr>
nmap <leader>fa :FufBookmark<cr>
nmap <leader>fm :FufAddBookmark<cr>
nmap <leader>fc :FufChangeList<cr>
"noremap <silent> <C-]> :FufTagWithCursorWord!<CR>

" yankring
let g:yankring_history_dir = '~/.vim/yankring'
"inoremap } <c-r>=ClosePair('}')<cr>
nnoremap <silent> <leader>yr :YRShow<cr>
inoremap <silent> <leader>yr <ESC>:YRShow<cr>


" ctrl-p
let g:ctrlp_working_path_mode = 2 " .git/ .hg/ .svn/ .bzr/ _darcs/ or your own marker_dir/ marker_file
let g:ctrlp_map = '<d-p>'


" command-T
"nmap <leader>tt :CommandT<cr>
"if has("gui_macvim")
	"map <D-T> :CommandT<CR>
"endif

" showmarks
if has("gui_running") || has("gui_macvim")
	let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	let g:showmarks_enable = 1
	let showmarks_ignore_type = "hqm"
endif
"<Leader>mt   - 打开/关闭ShowMarks插件
"<Leader>mo   - 强制打开ShowMarks插件
"<Leader>mh   - 清除当前行的标记
"<Leader>ma   - 清除当前缓冲区中所有的标记
"<Leader>mm   - 在当前行打一个标记，使用下一个可用的标记名

" vimpanel
cabbrev ss VimpanelSessionMake
cabbrev sl VimpanelSessionLoad
cabbrev vp Vimpanel
cabbrev vl VimpanelLoad
cabbrev vc VimpanelCreate
cabbrev ve VimpanelEdit
cabbrev vr VimpanelRemove
map <leader>vp :vl default<cr>
map <leader>vl :vl 











let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
"let NERDShutUp=1
"let g:NERDCommenterLeader="<leader>n" " change NERD_commenter.vim
nmap <leader>nc <plug>NERDCommenterComment
vmap <leader>nc <plug>NERDCommenterComment
nmap <leader>n<space> <plug>NERDCommenterToggle
vmap <leader>n<space> <plug>NERDCommenterToggle
nmap <leader>nm <plug>NERDCommenterMinimal
vmap <leader>nm <plug>NERDCommenterMinimal
nmap <leader>ns <plug>NERDCommenterSexy
vmap <leader>ns <plug>NERDCommenterSexy
nmap <leader>ni <plug>NERDCommenterInvert
vmap <leader>ni <plug>NERDCommenterInvert
nmap <leader>nn <plug>NERDCommenterNest
vmap <leader>nn <plug>NERDCommenterNest
nmap <leader>nu <plug>NERDCommenterUncomment
vmap <leader>nu <plug>NERDCommenterUncomment
nmap <leader>nl <plug>NERDCommenterAlignLeft
vmap <leader>nl <plug>NERDCommenterAlignLeft
nmap <leader>nb <plug>NERDCommenterAlignBoth
vmap <leader>nb <plug>NERDCommenterAlignBoth

let VCSCommandSVKExec='disabled no such executable'
nmap <leader>cd :VCSVimDiff


let g:Powerline_symbols = 'compatible'
"let g:Powerline_symbols = 'fancy'

"" YouCompleteMe
"let g:ycm_filetype_blacklist = {
"\    'notes' : 1,
"\    'markdown' : 1,
"\    'text' : 1,
"\}
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_complete_in_comments_and_strings = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_key_list_select_completion = ['<Enter>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-Enter>', '<Up>']

" UltiSnips
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" neocomplcache

" Disable AutoComplPop. 
let g:acp_enableAtStartup = 0 
" Use neocomplcache. 
let g:neocomplcache_enable_at_startup = 1 
" Use smartcase. 
let g:neocomplcache_enable_smart_case = 1 
" Use camel case completion. 
"let g:neocomplcache_enable_camel_case_completion = 1 
" Use underbar completion. 
"let g:neocomplcache_enable_underbar_completion = 1 
" Set minimum syntax keyword length. 
let g:neocomplcache_min_syntax_length = 1 
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_max_list = 20

" key-mappings
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

"inoremap <expr><Space> pumvisible() ? "\<c-y>" : "\<Space>"
inoremap <expr><Esc> pumvisible() ? "\<c-y>" : "\<Esc>"
inoremap <expr><Enter> pumvisible() ? "\<c-n>" : "\<Enter>"
inoremap <expr><s-Enter> pumvisible() ? "\<c-p>" : "\<s-Enter>"
"imap <expr><tab>  pumvisible() ? "\<c-n>" : "\<TAB>"
"imap <expr><s-tab>  pumvisible() ? "\<c-p>" : "\<s-TAB>"


" Enable omni completion.
autocmd FileType css,scss setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=jscomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" jscomplete
let g:jscomplete_use = ['moz', 'es6th']

" vim-nodejs-complete
let g:nodejs_complete_config = {
\  'js_compl_fn': 'javascriptcomplete#CompleteJS',
\  'max_node_compl_len': 15
\}

" html5
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0
let g:aria_attributes_complete = 0

" fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete

" eighties
let g:eighties_enabled = 1
let g:eighties_minimum_width = 80
let g:eighties_extra_width = 0 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum + extra

" easymotion
let g:EasyMotion_leader_key = '\'

let g:calendar_diary = '~/.vim/diary'


"Slimv
let g:slimv_leader = ",l"
"let g:slimv_lisp = "ccl"
let g:slimv_impl = 'ccl'
let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"ccl --load ~/.vim/slime/start-swank.lisp\""' 

let g:user_emmet_mode='a'
set guifont=Monaco:h12
let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
"tab space
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd FileType python set omnifunc=pythoncomplete#Complete

let g:user_emmet_mode='a'

" ad rope plugin
let g:pymode_rope = 1

" Map keys for autocompletion
let g:pymode_rope_autocomplete_map = '<C-Space>'

" Auto create and open ropeproject
let g:pymode_rope_auto_project = 1

" Enable autoimport
let g:pymode_rope_enable_autoimport = 1

" Auto generate global cache
let g:pymode_rope_autoimport_generate = 1

let g:pymode_rope_autoimport_underlineds = 0

let g:pymode_rope_codeassist_maxfixes = 10

let g:pymode_rope_sorted_completions = 1

let g:pymode_rope_extended_complete = 1

let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]

let g:pymode_rope_confirm_saving = 1

let g:pymode_rope_global_prefix = "<C-x>p"

let g:pymode_rope_local_prefix = "<C-c>r"

let g:pymode_rope_vim_completion = 1

let g:pymode_rope_guess_project = 1

let g:pymode_rope_goto_def_newwin = ""

let g:pymode_rope_always_show_complete_menu = 0

let g:pymode_virtualenv = 1



let g:used_javascript_libs = 'underscore,backbone,angularjs,jquery'
