call plug#begin()
Plug 'plasticboy/vim-markdown'
Plug 'wsdjeg/GitHub.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/grep.vim'
Plug 'lambdalisue/vim-gita'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
"Plug 'Shougo/neocomplete'
Plug 'Shougo/denite.nvim'
Plug 'vim-scripts/BlockComment.vim'
Plug 'lzap/vim-selinux'
Plug 'vim-scripts/bash-support.vim'
Plug 'vim-scripts/linuxsty.vim'
Plug 'drmikehenry/vim-headerguard'
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
Plug 'godlygeek/tabular'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'hewes/unite-gtags'
Plug 'jlanzarotta/bufexplorer'
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
Plug 'neomake/neomake'
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
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/SearchComplete'
Plug 'vim-scripts/taglist.vim'
Plug 'scrooloose/nerdtree'
Plug 'voronkovich/ctrlp-nerdtree.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/LeaderF'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'kien/tabman.vim'
Plug 'mkitt/tabline.vim'
"Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine', { 'for': 'go' }
"""""""""""""""" theme
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vivien/vim-linux-coding-style'
Plug 'compnerd/arm64asm-vim'
Plug 'terryma/vim-expand-region'
call plug#end()

let g:plug_threads=3

"" Basic
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
set nowb
colorscheme OceanicNext
"colorscheme onedark

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"" maps
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

if has("gui_running")
    map  <silent>  <S-Insert>  "+p
    imap <silent>  <S-Insert>  <Esc>"+pa
endif

let $FZF_DEFAULT_COMMAND = 'ag --nofollow --nocolor --nogroup --hidden --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" --ignore "**/*.pyc" --ignore "**/*.png" --ignore ".repo" -g ""'

command! FZFgit call fzf#run({'source': 'git ls-files', 'sink': 'e', 'down': '40%'})
command! FZFc call fzf#run({'source': 'cat all_c.txt', 'sink': 'e', 'down': '40%'})
command! FZFjava call fzf#run({'source': 'cat all_java.txt', 'sink': 'e', 'down': '40%'})
command! FZFmk call fzf#run({'source': 'cat all_mk.txt', 'sink': 'e', 'down': '40%'})

"" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_delay = 150

let g:clang_library_path='/usr/lib/x86_64-linux-gnu/'

"" neomake
"let g:neomake_vim_enabled_makers = []
"let g:neomake_cpp_enable_makers = ['clang']
"call neomake#configure#automake('w')
"call neomake#configure#automake('nw', 750)
"call neomake#configure#automake('rw', 1000)
call neomake#configure#automake('nrwi', 500)

autocmd! BufWritePost,BufEnter * Neomake

"" airline
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

"" tagbar
let g:tagbar_left=1
noremap <silent> <F2> :silent TagbarToggle<CR>

"" bookmark
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
let g:bookmark_auto_save = 1

"" NERDTree
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

"" YangRing
nmap <Leader>y :YRShow<CR>
let g:yankring_clipboard_monitor=0

"" undotree
nnoremap <F4> :UndotreeToggle<cr>

"" arm64asm
autocmd BufNewFile,Bufread *.S set ft=arm64asm
autocmd BufNewFile,Bufread *.s set ft=arm64asm