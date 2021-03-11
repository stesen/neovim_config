" {{{ plugins
call plug#begin()
" language
Plug 'plasticboy/vim-markdown', { 'for' : 'markdown' }
Plug 'lervag/vimtex', { 'for' : 'plaintex' }
Plug 'lzap/vim-selinux', { 'for' : 'te' }
"Plug 'mmalecki/vim-node.js'
Plug 'compnerd/arm64asm-vim', { 'for' : 'asm'}
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'pboettch/vim-cmake-syntax'
Plug 'c0nk/vim-gn'
Plug 'rust-lang/rust.vim'

"Plug 'vim-scripts/bash-support.vim'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for' : ['c', 'cpp'] }
Plug 'artur-shaik/vim-javacomplete2', { 'for' : 'java' }
Plug 'drmikehenry/vim-headerguard', { 'for' : ['c', 'cpp'] }
Plug 'Yggdroot/indentLine', { 'for': 'python' }
Plug 'joker1007/vim-markdown-quote-syntax', { 'for' : 'markdown' }
Plug 'vivien/vim-linux-coding-style', { 'for' : 'c' }

" search
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/cscope.vim'
Plug 'aceofall/gtags.vim'

Plug 'jsfaint/gen_tags.vim'

Plug 'liuchengxu/vista.vim'

Plug 'vim-scripts/grep.vim'
Plug 'wsdjeg/FlyGrep.vim'

Plug 'Shougo/denite.nvim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'ozelentok/denite-gtags'

Plug 'vim-scripts/SearchComplete'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch.vim'

Plug 'Yggdroot/LeaderF'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-lookup'
Plug 'mileszs/ack.vim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" version
Plug 'lambdalisue/vim-gita'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" misc
Plug 'rkitover/vimpager'
Plug 'haya14busa/vim-asterisk'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/neopairs.vim'
Plug 'mbbill/undotree'

Plug 'rhysd/accelerated-jk'

Plug 'vim-scripts/BlockComment.vim'
Plug 'inkarkat/vim-mark'
Plug 'inkarkat/vim-ingo-library'

Plug 'benizi/vim-automkdir'

Plug 'ntpeters/vim-better-whitespace'
Plug 'godlygeek/tabular'
Plug 'kien/rainbow_parentheses.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'vim-scripts/YankRing.vim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-surround'

Plug 'yonchu/accelerated-smooth-scroll'
Plug 'kien/tabman.vim'
Plug 'terryma/vim-expand-region'

Plug 'vim-scripts/LargeFile'

Plug 'KabbAmine/vZoom.vim'
Plug 'wincent/terminus'

Plug 'farmergreg/vim-lastplace'
Plug 'artnez/vim-rename'

Plug 'lfv89/vim-interestingwords'
Plug 'stesen/occur.vim'

Plug 'kana/vim-fakeclip'

Plug 'tpope/vim-eunuch'

Plug 'voldikss/vim-floaterm'

Plug 'wellle/targets.vim'

" manage
Plug 'jlanzarotta/bufexplorer'
Plug 'majutsushi/tagbar', { 'on' : ['TagbarToggle'] }
Plug 'lvht/tagbar-markdown', { 'on' : ['TagbarToggle'] }

Plug 'scrooloose/nerdtree', {'on' : ['NERDTreeToggle'] }
Plug 'voronkovich/ctrlp-nerdtree.vim', {'on' : ['NERDTreeToggle'] }
Plug 'Xuyuanp/nerdtree-git-plugin', {'on' : ['NERDTreeToggle'] }

" theme
Plug 'rakr/vim-one'
Plug 'KeitaNakamura/neodark.vim'
"Plug 'jacoborus/tender.vim'
"Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
"Plug 'joshdick/onedark.vim'
"Plug 'rafi/awesome-vim-colorschemes'
Plug 'KabbAmine/yowish.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'kjssad/quantum.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jaxbot/semantic-highlight.vim'

" for gonvim
Plug 'equalsraf/neovim-gui-shim'

" complete
Plug 'tenfyzhong/CompleteParameter.vim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Valloric/YouCompleteMe'
"Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'tpope/vim-sleuth'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:plug_threads=3

autocmd VimEnter *
			\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\| endif
" }}}

" {{{ color
set background=dark
set t_Co=256
set t_ut=
set termguicolors
"colorscheme one
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
"colorscheme OceanicNext
"colorscheme quantum
"let g:neodark#use_256color = 1
"let g:neodark#terminal_transparent = 1
"let g:neodark#solid_vertsplit = 1
colorscheme neodark

"hi vertsplit ctermfg=grey
" }}}

" {{{ Basic
set encoding=UTF-8
set fileencodings=utf8,gb2312,gbk,gb18030
set autoread
set incsearch
set linebreak
"set clipboard+=unnamed
set clipboard^=unnamed,unnamedplus
set wildmenu
set smartindent
set cindent
set ic
set smartcase
set nobackup
set nowritebackup
set noswapfile
set magic
set hidden
set mouse=a
set noautochdir
set nu
set colorcolumn&
set cursorline
" }}}

" {{{ autocmd
autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
			\   q :cclose<cr>:lclose<cr>
autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
			\   bd|
			\   q | endif
autocmd FileType jsp call JspFileTypeInit()
autocmd BufRead,BufNewFile *.pp setfiletype puppet
autocmd BufRead,BufNewFile ohos.build setfiletype json
autocmd BufEnter,WinEnter,InsertLeave * setl cursorline
autocmd BufLeave,WinLeave,InsertEnter * setl nocursorline
autocmd BufNewFile,BufEnter * set cpoptions+=d " NOTE: ctags find the tags file from the current path instead of the path of currect file
autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)
autocmd BufNewFile,BufRead *.avs set syntax=avs " for avs syntax file.
autocmd FileType text setlocal textwidth=78 " for all text files set 'textwidth' to 78 characters.
autocmd FileType c,cpp,cs,swig set nomodeline " this will avoid bug in my project with namespace ex, the vim will tree ex:: as modeline.
autocmd FileType c set colorcolumn=80
autocmd FileType cpp set colorcolumn=120
autocmd FileType c,cpp,java,javascript set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f://
autocmd FileType cs set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f:///,f://
autocmd FileType vim set comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",f:\"
autocmd FileType lua set comments=f:--
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType python,coffee call s:check_if_expand_tab()
autocmd BufNewFile,BufRead Android.bp :setl ft=go sw=4 sts=4 et

fu! s:check_if_expand_tab() abort
	let has_noexpandtab = search('^\t','wn')
	let has_expandtab = search('^    ','wn')
	if has_noexpandtab && has_expandtab
		let idx = inputlist ( ['ERROR: current file exists both expand and noexpand TAB, python can only use one of these two mode in one file.\nSelect Tab Expand Type:',
					\ '1. expand (tab=space, recommended)',
					\ '2. noexpand (tab=\t, currently have risk)',
					\ '3. do nothing (I will handle it by myself)'])
		let tab_space = printf('%*s',&tabstop,'')
		if idx == 1
			let has_noexpandtab = 0
			let has_expandtab = 1
			silent exec '%s/\t/' . tab_space . '/g'
		elseif idx == 2
			let has_noexpandtab = 1
			let has_expandtab = 0
			silent exec '%s/' . tab_space . '/\t/g'
		else
			return
		endif
	endif
	if has_noexpandtab == 1 && has_expandtab == 0
		echomsg 'substitute space to TAB...'
		set noexpandtab
		echomsg 'done!'
	elseif has_noexpandtab == 0 && has_expandtab == 1
		echomsg 'substitute TAB to space...'
		set expandtab
		echomsg 'done!'
	else
		" it may be a new file
		" we use original vim setting
	endif
endf
" }}}

" {{{ maps
nnoremap <f1> :BufExplorer<CR>
noremap ,e :e <C-r>=expand("%:p:h") . "/"<cr>
map gcc <ESC>:wa!<cr>:!clear && gcc -Wall % -o %< && ./%< <cr>
map mk <ESC>:wa!<cr>:!clear && make <cr>
"--------------------------------------------------
" noremap <C-]> :ts <C-R>=expand("<cword>")<cr><cr>
" noremap <C-t> :po<cr>
" let g:clang_jumpto_declaration_key = 'C-}'
"-------------------------------------------------- 
map <Leader>p :pt <C-R>=expand("<cword>")<cr><cr>
map <Leader>l :pc<cr>

noremap ,f <ESC>ggd%:r! cat ~/head.txt<cr>ggdd

nnoremap <silent><C-Right> :<C-u>wincmd l<CR>
nnoremap <silent><C-Left>  :<C-u>wincmd h<CR>
nnoremap <silent><C-Up>    :<C-u>wincmd k<CR>
nnoremap <silent><C-Down>  :<C-u>wincmd j<CR>
if has('nvim')
	exe 'tnoremap <silent><C-Right> <C-\><C-n>:<C-u>wincmd l<CR>'
	exe 'tnoremap <silent><C-Left>  <C-\><C-n>:<C-u>wincmd h<CR>'
	exe 'tnoremap <silent><C-Up>    <C-\><C-n>:<C-u>wincmd k<CR>'
	exe 'tnoremap <silent><C-Down>  <C-\><C-n>:<C-u>wincmd j<CR>'
	exe 'tnoremap <silent><M-Left>  <C-\><C-n>:<C-u>bprev<CR>'
	exe 'tnoremap <silent><M-Right>  <C-\><C-n>:<C-u>bnext<CR>'
	exe 'tnoremap <silent><esc>     <C-\><C-n>'
endif
nnoremap <silent>]<End> ddGp``
nnoremap <silent>]<Home> ddggP``
vnoremap <silent>]<End> dGp``
vnoremap <silent>]<Home> dggP``

" Select blocks after indenting
xnoremap < <gv
xnoremap > >gv|

" Use tab for indenting in visual mode
xnoremap <Tab> >gv|
xnoremap <S-Tab> <gv
nnoremap > >>_
nnoremap < <<_

" smart up and down
nnoremap <silent><Down> gj
nnoremap <silent><Up> gk

" Navigation in command line
cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

" remap ctrl-m
inoremap <C-M> <C-R>=pumvisible() ? "\<lt>C-N>" : "\<lt>C-M>"<CR>

" }}}

" {{{ manual indent
function! Tab4() range
	set tabstop=4
	set expandtab
	set softtabstop=4
	set shiftwidth=4
	setlocal cindent
    	"setlocal cinoptions=h1,l1,g0,t0,i4,+4,(0,w1,W4
endfunction
function! Tab2() range
	set tabstop=2
	set expandtab
	set softtabstop=2
	set shiftwidth=2
	setlocal cindent
	"setlocal cinoptions=h1,l1,g0,t0,i4,+4,(0,w1,W4
endfunction

set cinoptions+=g0
nnoremap <A-t> :call Tab2()<CR>
nnoremap <A-f> :call Tab4()<CR>
nnoremap <A-k> :LinuxCodingStyle<CR>
"}}}

" {{{ ctags
set tags=./tags;,tags
" }}}

" {{{ cscope
let g:LookupFile_TagExpr = '"cscope.files"'
if has("cscope")
	set csprg=cscope
	set csto=1
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	if filereadable("tags_local/cscope.out")
		cs add tags_local/cscope.out
	endif
	set csverb
	if has('quickfix')
	  set cscopequickfix=s-,c-,d-,i-,t-,e-
	endif
endif
" }}}

" {{{ gtags
set cscopetag
set cscopeprg='gtags-cscope'
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1

nnoremap <leader>ga :DeniteCursorWord -buffer-name=gtags_context gtags_context -mode=normal<cr>
nnoremap <leader>gd :DeniteCursorWord -buffer-name=gtags_def gtags_def -mode=normal<cr>
nnoremap <leader>gr :DeniteCursorWord -buffer-name=gtags_ref gtags_ref -mode=normal<cr>
nnoremap <leader>gg :DeniteCursorWord -buffer-name=gtags_grep gtags_grep -mode=normal<cr>
nnoremap <leader>gt :Denite -buffer-name=gtags_completion gtags_completion -mode=normal<cr>
nnoremap <leader>gf :Denite -buffer-name=gtags_file gtags_file -mode=normal<cr>
nnoremap <leader>gp :Denite -buffer-name=gtags_path gtags_path -mode=normal<cr>
" }}}

" {{{ VisualSearch
function! VisualSearch(direction) range
	let l:saved_reg = @"
	execute "normal! vgvy"
	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")
	if a:direction == 'b'
		execute "normal ?" . l:pattern
	else
		execute "normal /" . l:pattern
	endif
	let @/= l:pattern
	let @" = l:saved_reg
endfunction

"Basically you press * or # to search
"for the current selection !! Really
"useful
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>
" }}}

" {{{ Gui insert
if has("gui_running")
	map  <silent>  <S-Insert>  "+p
	imap <silent>  <S-Insert>  <Esc>"+pa
endif
" }}}

" {{{ fzf
let $FZF_DEFAULT_COMMAND = 'ag --nofollow --nocolor --nogroup --hidden --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" --ignore "**/*.pyc" --ignore "**/*.png" --ignore ".repo" -g ""'

command! FZFgit call fzf#run({'source': 'git ls-files', 'sink': 'e', 'down': '40%'})
command! FZFc call fzf#run({'source': 'cat all_c.txt', 'sink': 'e', 'down': '40%'})
command! FZFjava call fzf#run({'source': 'cat all_java.txt', 'sink': 'e', 'down': '40%'})
command! FZFmk call fzf#run({'source': 'cat all_mk.txt', 'sink': 'e', 'down': '40%'})
" }}}

" {{{ grepper
"--------------------------------------------------
" let g:grepper = {
"     \ 'tools': ['aag', 'ag', 'git', 'grep', 'findstr'],
"     \ 'aag': {
"     \   'grepprg':    'aag-vim $* .',
"     \ }}
" nnoremap <leader>gw :Grepper -cword -noprompt<cr>
"--------------------------------------------------

set grepprg=aag-vim
nnoremap <leader>gw :grep <C-r><C-w><CR>
" }}}

" {{{ deoplete
"--------------------------------------------------
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#auto_complete_delay = 150
" 
" let g:clang_library_path='/usr/lib/x86_64-linux-gnu/'
" 
" call deoplete#custom#source('_',
" 		\ 'matchers', ['matcher_head'])
" 
"-------------------------------------------------- 
" }}}

" {{{ denite
let s:insert_mode_mappings = [
      \  ['jk', '<denite:enter_mode:normal>', 'noremap'],
      \ ['<Tab>', '<denite:move_to_next_line>', 'noremap'],
      \ ['<S-tab>', '<denite:move_to_previous_line>', 'noremap'],
      \  ['<Esc>', '<denite:enter_mode:normal>', 'noremap'],
      \  ['<C-n>', '<denite:move_to_next_line>', 'noremap'],
      \  ['<C-p>', '<denite:move_to_previous_line>', 'noremap'],
      \  ['<Up>', '<denite:assign_previous_text>', 'noremap'],
      \  ['<Down>', '<denite:assign_next_text>', 'noremap'],
      \  ['<C-Y>', '<denite:redraw>', 'noremap'],
      \ ]

let s:normal_mode_mappings = [
      \   ["'", '<denite:toggle_select_down>', 'noremap'],
      \   ['<C-n>', '<denite:move_to_next_line>', 'noremap'],
      \   ['<C-p>', '<denite:move_to_previous_line>', 'noremap'],
      \   ['gg', '<denite:move_to_first_line>', 'noremap'],
      \   ['st', '<denite:do_action:tabopen>', 'noremap'],
      \   ['sg', '<denite:do_action:vsplit>', 'noremap'],
      \   ['sv', '<denite:do_action:split>', 'noremap'],
      \   ['q', '<denite:quit>', 'noremap'],
      \   ['r', '<denite:redraw>', 'noremap'],
      \ ]

for s:m in s:insert_mode_mappings
  call denite#custom#map('insert', s:m[0], s:m[1], s:m[2])
endfor
for s:m in s:normal_mode_mappings
  call denite#custom#map('normal', s:m[0], s:m[1], s:m[2])
endfor

unlet s:m s:insert_mode_mappings s:normal_mode_mappings

map <leader>a :DeniteProjectDir -buffer-name=grep -default-action=quickfix grep:::!<CR>
call denite#custom#source(
\ 'grep', 'matchers', ['matcher_regexp'])

" use ag for content search
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
    \ ['-i', '--vimgrep', '--ignore', '.hg', '--ignore', '.svn', '--ignore', '.git', '--ignore', '.bzr', '--ignore', '**/*.pyc', '--ignore', '.repo', '--ignore', 'tags', '--ignore', 'cscope.out', '--ignore', 'GPATH', '--ignore', 'GRTAGS', '--ignore', 'GSYMS', '--ignore', 'GTAGS', '--ignore', 'cscope.files'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
" }}}

" {{{ airline
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffers_label = 'BUFFERS'
let g:airline#extensions#tabline#tabs_label = 'TABS'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

"let g:airline_theme='solarized_flood'
"let g:airline_theme='fairyfloss'
let g:lightline = {
  \ 'colorscheme': 'quantum'
  \ }
" }}}

" {{{ tagbar
let g:tagbar_left=1
let g:tagbar_sort = 0
noremap <silent> <F2> :silent TagbarToggle<CR>
let g:tagbar_type_arm64asm = {
			\ 'ctagsbin'  : 'ctags',
			\ 'ctagsargs' : '-f- --format=2 --excmd=pattern --fields=nksSa --extra= --sort=no --language-force=asm',
			\ 'kinds' : [
			\ 'm:macros:0:1',
			\ 't:types:0:1',
			\ 'd:defines:0:1',
			\ 'l:labels:0:1'
			\ ]
			\}
let g:tagbar_type_go = {
			\ 'ctagstype': 'go',
			\ 'kinds' : [
			\'p:package',
			\'f:function',
			\'v:variables',
			\'t:type',
			\'c:const'
			\]
			\}
let g:tagbar_type_make = {
			\ 'kinds':[
			\ 'm:macros',
			\ 't:targets'
			\ ]
			\}

" }}}

" {{{ bookmark
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=DarkBlue ctermfg=Black
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
let g:bookmark_auto_save = 1
" }}}

" {{{ NERDTree
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let NERDTreeShowBookmarks=1
"let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = "right"
"let g:NERDTreeIndicatorMapCustom = {
"			\ "Modified"  : "✹",
"			\ "Staged"    : "✚",
"			\ "Untracked" : "✭",
"			\ "Renamed"   : "➜",
"			\ "Unmerged"  : "═",
"			\ "Deleted"   : "✖",
"			\ "Dirty"     : "✗",
"			\ "Clean"     : "✔︎",
"			\ "Unknown"   : "?"
"			\ }
"autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p
nmap <Leader>nd :NERDTreeFocus<cr>R<c-w><c-p>
" }}}

" {{{ YangRing
nmap <Leader>y :YRShow<CR>
let g:yankring_clipboard_monitor=0
let g:yankring_history_file = '.yankring_history'
" }}}

" {{{ undotree
nnoremap <F4> :UndotreeToggle<cr>
" }}}

" {{{ arm64asm
autocmd BufNewFile,Bufread *.S set ft=arm64asm
autocmd BufNewFile,Bufread *.s set ft=arm64asm
" }}}

" {{{ CompleteParameter
inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
" }}}

" " {{{ ycm
" let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm_extra_conf.py'
" let g:ycm_python_binary_path = '/usr/bin/python3'
" 
" highlight YcmWarningLine guibg=#ffffff
" highlight YcmWarningSign guibg=#ffffff
" highlight YcmWarningSection guibg=#ffffff
" 
" autocmd FileType c,cpp,h,hpp call s:check_ycm_diag_enable()
" fu! s:check_ycm_diag_enable() abort
"   let g:ycm_show_diagnostics_ui = 0
"   let fp = expand('%:p:h')
"   let m = 0
"   for patt in [ '/kernel', '/linux', '/maple' , '/src', '/qemu' ]
"     let mm = matchstr(fp, patt)
"     if ! empty(mm)
"       let m = 1
"       break
"     endif
"   endfor
"   if m == 0
"     let g:ycm_show_diagnostics_ui = 1
"     nnoremap <A-y> :YcmCompleter FixIt<CR>
"   endif
" endf
" " }}}

" {{{ incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
" }}}

" {{{ asterrisk
map <A-8>  <Plug>(asterisk-z*)
map <A-3>  <Plug>(asterisk-z#)
let g:asterisk#keeppos = 1
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
" }}}

" {{{ complete_parameter
inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
" }}}

"{{{ floaterm
let g:floaterm_width = &columns / 2
let g:floaterm_height = winheight(0)/2
noremap  <silent> <expr><F12>     &buftype =='terminal' ?
                                  \ "\<C-\><C-n>:FloatermToggle\<CR>" :
                                  \ "\<Esc>:FloatermToggle\<CR>i<C-u>"
noremap! <silent> <F12>           <Esc>:FloatermToggle<CR>i
tnoremap <silent> <F12>           <C-\><C-n>:FloatermToggle<CR>
" }}}

" {{{ coc

" Better display for messages
"set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

let g:coc_global_extensions = ['coc-dictionary', 'coc-tag', 'coc-word', 'coc-syntax', 'coc-lists', 'coc-highlight', 'coc-git', 'coc-json', 'coc-yank']

" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <Leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@

function! s:GrepFromSelected(type)
  let saved_unnamed_register = @@
  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[v`]y
  else
    return
  endif
  let word = substitute(@@, '\n$', '', 'g')
  let word = escape(word, '| ')
  let @@ = saved_unnamed_register
  execute 'CocList grep '.word
endfunction

nnoremap <silent> <space>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>

" }}}

"""{{{ accelerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

""" }}}

""" {{{
nnoremap <Leader>s :SemanticHighlightToggle<cr>
""" }}}

""" {{{
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fl <cmd>Telescope git_files<cr>
""" }}}

""" {{{
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF

"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
""" }}}
