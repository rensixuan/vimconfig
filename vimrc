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
set tags=./tags,tags;$HOME
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
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }

"======vim-go=====
"let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
"let g:go_autodetect_gopath = 1
"let g:go_list_type = "quickfix"
"let g:go_version_warning = 1
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_generate_tags = 1
"let g:godef_split=2
"let g:go_doc_keywordprg_enabled = 0

"====code format====
let g:clang_format#command = 'clang-format'
nmap <F4> :ClangFormat<cr>
"autocmd FileType c ClangFormatAutoEnable
"autocmd FileType cpp ClangFormatAutoEnable
"autocmd FileType h ClangFormatAutoEnable
let g:clang_format#detect_style_file = 0

let g:clang_format#style_options = {
        \ "Language" : "Cpp",
        \ "BasedOnStyle" : "Google",
        \ "AccessModifierOffset" : -1,
        \ "AlignAfterOpenBracket" : "true",
        \ "AlignEscapedNewlinesLeft" : "true",
        \ "AlignOperands" : "true",
        \ "AlignTrailingComments" : "true",
        \ "AllowAllParametersOfDeclarationOnNextLine" : "true",
        \ "AllowShortBlocksOnASingleLine" : "false",
        \ "AllowShortCaseLabelsOnASingleLine" : "false",
        \ "AllowShortIfStatementsOnASingleLine" : "true",
        \ "AllowShortLoopsOnASingleLine" : "true",
        \ "AllowShortFunctionsOnASingleLine" : "All",
        \ "AlwaysBreakAfterDefinitionReturnType" : "false",
        \ "AlwaysBreakTemplateDeclarations" : "true",
        \ "AlwaysBreakBeforeMultilineStrings" : "true",
        \ "BreakBeforeBinaryOperators" : "None",
        \ "BreakBeforeTernaryOperators" : "true",
        \ "BreakConstructorInitializersBeforeComma" : "false",
        \ "BinPackParameters" : "true",
        \ "BinPackArguments" : "true",
        \ "ColumnLimit" : 100,
        \ "ConstructorInitializerAllOnOneLineOrOnePerLine" : "true",
        \ "ConstructorInitializerIndentWidth" : 4,
        \ "DerivePointerAlignment" : "true",
        \ "ExperimentalAutoDetectBinPacking" : "false",
        \ "IndentCaseLabels" : "true",
        \ "IndentWrappedFunctionNames" : "false",
        \ "IndentFunctionDeclarationAfterType" : "false",
        \ "MaxEmptyLinesToKeep" : 1,
        \ "KeepEmptyLinesAtTheStartOfBlocks" : "false",
        \ "NamespaceIndentation" : "None",
        \ "ObjCBlockIndentWidth" : 2,
        \ "ObjCSpaceAfterProperty" : "false",
        \ "ObjCSpaceBeforeProtocolList" : "false",
        \ "PenaltyBreakBeforeFirstCallParameter" : 1,
        \ "PenaltyBreakComment" : 300,
        \ "PenaltyBreakString" : 1000,
        \ "PenaltyBreakFirstLessLess" : 120,
        \ "PenaltyExcessCharacter" : 1000000,
        \ "PenaltyReturnTypeOnItsOwnLine" : 200,
        \ "PointerAlignment" : "Left",
        \ "SpacesBeforeTrailingComments" : 2,
        \ "Cpp11BracedListStyle" : "true",
        \ "Standard" : "Auto",
        \ "IndentWidth" : 2,
        \ "TabWidth" : 8,
        \ "UseTab" : "Never",
        \ "BreakBeforeBraces" : "Attach",
        \ "SpacesInParentheses" : "false",
        \ "SpacesInSquareBrackets" : "false",
        \ "SpacesInAngles" : "false",
        \ "SpaceInEmptyParentheses" : "false",
        \ "SpacesInCStyleCastParentheses" : "false",
        \ "SpaceAfterCStyleCast" : "false",
        \ "SpacesInContainerLiterals" : "true",
        \ "SpaceBeforeAssignmentOperators" : "true",
        \ "ContinuationIndentWidth" : 4 }


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
" Other visual enhancement
 "Plugin 'nathanaelkane/vim-indent-guides'
 Plugin 'itchyny/vim-cursorword'

"goland
 "Plugin 'fatih/vim-go'
" Git
 "Plugin 'rhysd/conflict-marker.vim'
 "Plugin 'tpope/vim-fugitive'
 "Plugin 'mhinz/vim-signify'
 "Plugin 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-Plug'] }


 " Python
 Plugin 'vim-scripts/indentpython.vim'
 
 "format
 "Plugin 'Chiel92/vim-autoformat'
 Plugin 'Raimondi/delimitMate'
 Plugin 'rhysd/vim-clang-format'
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
