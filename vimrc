set nocompatible
filetype off
filetype indent on
filetype plugin on
filetype plugin indent on
let mapleader=" "
syntax on

set cursorline
set wrap 
set showcmd 
set hlsearch
exec "nohlsearch"
set incsearch
set wildmenu
set encoding=utf-8
set foldmethod=syntax 
set scrolloff=5
set foldlevelstart=99
set backspace=2
set fileencodings=ucs-bom,utf-8,utf-16,gbk,latin1,gb2312,cp936
set fencs=utf-8,GB18030,ucs-bom,default,latin1
set termencoding=utf-8
set ts=4
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set number
set autoindent
set cindent
"set tags=./tags,tags;$HOME
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 

noremap i k
noremap k j
noremap j h
noremap h i
noremap H I
noremap K 5j
noremap I 5k
noremap J 5h
noremap L 5l
noremap <LEADER><CR> :nohlsearch<CR>
noremap go :TlistOpen<CR>
noremap gc :TlistClose<CR>

inoremap jj <esc>
inoremap ]] <esc>A

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map sd :set splitright<CR>:vsplit<CR>
map sa :set nosplitright<CR>:vsplit<CR>
map <LEADER> ch

map <LEADER>j <C-w>h
map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map te :tabe<CR>
map t- :tabp<CR>
map t= :tabn<CR>

map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map <up> :res-5<CR>
map <down> :res+5<CR>

map ff gD<C-o>
map rr vhw
map <leader>r :NERDTreeFind<cr>

let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1 
"===NerdTree
map qq :NERDTreeToggle<CR>
let NERDTreeMapOpenSplit = ""
let NERDTreeIgnore = ['\.so','\.o']

let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_enable_at_startup = 1


" ==
" == NERDTree-git
" ==
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


"format
let g:delimitMate_expand_cr = 1

"ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o     " MacOSX/Linux"
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"=======plug
Plugin 'vim-airline/vim-airline'
Plugin 'altercation/vim-colors-solarized'

" File navigation
 Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
 Plugin 'Xuyuanp/nerdtree-git-Plug'
" Taglist
 Plugin 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
" Auto Complete
Plugin 'Shougo/neocomplcache.vim'
" Error checking
 Plugin 'w0rp/ale' 
" Undo Tree
 "Plugin 'mbbill/undotree/'
" Other visual enhancement
 Plugin 'nathanaelkane/vim-indent-guides'
 Plugin 'itchyny/vim-cursorword'

"goland
 "Plugin 'fatih/vim-go'
" Git
 Plugin 'rhysd/conflict-marker.vim'
 Plugin 'tpope/vim-fugitive'
 Plugin 'mhinz/vim-signify'
 Plugin 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-Plug'] }


 " Python
 Plugin 'vim-scripts/indentpython.vim'
 
 "format
 Plugin 'Chiel92/vim-autoformat'
 Plugin 'Raimondi/delimitMate'
 "search
 Plugin 'rking/ag.vim'
 "others
 Plugin 'kien/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required

let g:SnazzyTransparent = 1
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
let g:lightline = {
\ 'colorscheme': 'solarized',
\ }
"== 
"== ycm
"==
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey 
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
