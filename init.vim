" {{{ plugins
call plug#begin()
Plug 'plasticboy/vim-markdown'
Plug 'wsdjeg/GitHub.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/cscope.vim'
Plug 'vim-scripts/grep.vim'
Plug 'lambdalisue/vim-gita'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
"Plug 'Shougo/neocomplete'
Plug 'Shougo/denite.nvim'
Plug 'vim-scripts/BlockComment.vim'
Plug 'lzap/vim-selinux'
Plug 'vim-scripts/bash-support.vim'
Plug 'vim-scripts/linuxsty.vim'
Plug 'vim-scripts/Mark--Karkat'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/SearchComplete'
Plug 'jlanzarotta/bufexplorer'
Plug 'airblade/vim-gitgutter'
"Plug 'albfan/ag.vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'benizi/vim-automkdir'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'drmikehenry/vim-headerguard'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'hewes/unite-gtags'
Plug 'joker1007/vim-markdown-quote-syntax'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'godlygeek/tabular'
Plug 'kien/rainbow_parentheses.vim'
Plug 'lambdalisue/vim-gita'
Plug 'lervag/vimtex'
Plug 'lvht/tagbar-markdown'
Plug 'lzap/vim-selinux'
Plug 'majutsushi/tagbar'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-lookup'
Plug 'mileszs/ack.vim'
Plug 'mmalecki/vim-node.js'
"Plug 'neomake/neomake'
Plug 'ntpeters/vim-better-whitespace'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'othree/es.next.syntax.vim'
"Plug 'Rip-Rip/clang_complete'
Plug 'vim-scripts/YankRing.vim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/SearchComplete'
Plug 'scrooloose/nerdtree'
Plug 'voronkovich/ctrlp-nerdtree.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/LeaderF'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'kien/tabman.vim'
Plug 'mkitt/tabline.vim'
Plug 'terryma/vim-expand-region'
"Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine', { 'for': 'python' }
"""""""""""""""" theme
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vivien/vim-linux-coding-style'
Plug 'compnerd/arm64asm-vim'

Plug 'tenfyzhong/CompleteParameter.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-sleuth'
call plug#end()

let g:plug_threads=3
" }}}

" {{{ Basic
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
set t_Co=256
set mouse=a
set noautochdir
set background=dark
set nu
set colorcolumn&
set cursorline
set nowb
colorscheme OceanicNext
"colorscheme onedark

"hi vertsplit ctermfg=grey
" }}}

" {{{ autocmd
autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
			\   q :cclose<cr>:lclose<cr>
autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
			\   bd|
			\   q | endif
autocmd FileType jsp call JspFileTypeInit()
autocmd BufRead,BufNewFile *.pp setfiletype puppet
autocmd BufEnter,WinEnter,InsertLeave * setl cursorline
autocmd BufLeave,WinLeave,InsertEnter * setl nocursorline
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif
autocmd BufNewFile,BufEnter * set cpoptions+=d " NOTE: ctags find the tags file from the current path instead of the path of currect file
autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)
autocmd BufNewFile,BufRead *.avs set syntax=avs " for avs syntax file.
autocmd FileType text setlocal textwidth=78 " for all text files set 'textwidth' to 78 characters.
autocmd FileType c,cpp,cs,swig set nomodeline " this will avoid bug in my project with namespace ex, the vim will tree ex:: as modeline.
autocmd FileType c,cpp,java,javascript set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f://
autocmd FileType cs set comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,f:///,f://
autocmd FileType vim set comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",f:\"
autocmd FileType lua set comments=f:--
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType python,coffee call s:check_if_expand_tab()

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
" }}}

" {{{ manual indent
function! Tab4() range
    set tabstop=4
    set expandtab
    set softtabstop=4
    set shiftwidth=4
    setlocal cindent
    setlocal cinoptions=h1,l1,g1,t0,i4,+4,(0,w1,W4
endfunction
function! Tab2() range
    set tabstop=2
    set expandtab
    set softtabstop=2
    set shiftwidth=2
    setlocal cindent
    setlocal cinoptions=h1,l1,g1,t0,i4,+4,(0,w1,W4
endfunction

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
endif
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

" {{{ deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_delay = 150

let g:clang_library_path='/usr/lib/x86_64-linux-gnu/'
" }}}

" {{{ neomake
"let g:neomake_vim_enabled_makers = []
"let g:neomake_cpp_enable_makers = ['clang']
"call neomake#configure#automake('w')
"call neomake#configure#automake('nw', 750)
"call neomake#configure#automake('rw', 1000)
"call neomake#configure#automake('nrwi', 500)

"autocmd! BufWritePost,BufEnter * Neomake
" }}}

" {{{ airline
"--------------------------------------------------
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'
"--------------------------------------------------

let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type= 2
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffers_label = 'BUFFERS'
let g:airline#extensions#tabline#tabs_label = 'TABS'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_theme='dark_minimal'
" }}}

" {{{ tagbar{{{
let g:tagbar_left=1
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
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
let g:bookmark_auto_save = 1
" }}}

" {{{ NERDTree
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = "right"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
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

" {{{ ycm
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python3'
highlight YcmWarningLine guibg=#ffffff
highlight YcmWarningSign guibg=#ffffff
highlight YcmWarningSection guibg=#ffffff
nnoremap <A-f> :YcmCompleter FixIt<CR>
" }}}

" {{{ incsearch'=
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
" }}}
