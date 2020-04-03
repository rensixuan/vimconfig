set nocompatible
filetype on
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

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

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
map t- :-tabnext<CR>
map t= :+tabnext<CR>

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
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

call plug#begin('~/.vim/plugged')

"=======plug
Plug 'vim-airline/vim-airline'
"Plug 'connorholyday/vim-snazzy'
"Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'

" File navigation
 Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
 Plug 'Xuyuanp/nerdtree-git-plugin'
" Taglist
 Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
" Auto Complete
 Plug 'Valloric/YouCompleteMe'
" Error checking
 Plug 'w0rp/ale' 
" Undo Tree
 Plug 'mbbill/undotree/'
" Other visual enhancement
 Plug 'nathanaelkane/vim-indent-guides'
 Plug 'itchyny/vim-cursorword'

" Git
 Plug 'rhysd/conflict-marker.vim'
 Plug 'tpope/vim-fugitive'
 Plug 'mhinz/vim-signify'
 Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
" Plug 'elzr/vim-json'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
" Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html','javascript', 'css', 'less'] }
" Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
" Plug 'mattn/emmet-vim'

 " Python
 Plug 'vim-scripts/indentpython.vim'
 
 "format
 Plug 'Chiel92/vim-autoformat'
 Plug 'Raimondi/delimitMate'
 "search
 Plug 'rking/ag.vim'
 "others
 Plug 'kien/ctrlp.vim'
call plug#end()

"let g:SnazzyTransparent = 1
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
