set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
set ruler		    	"line, column in corner
set hlsearch			"search highlighting
set incsearch			"incremental search
set number		    	"line numbers
set showcmd	    		"show hidden commands
set cursorline			"highlight current line
set wildmenu			"autocompletion menu
set showmatch			"highlight matching [{()}]
syntax enable			"syntax highlighting
set tabstop=2			"number of visual spaces per TAB when reading
set softtabstop=2		"number of spaces per TAB when editing
set expandtab			"tabs are spaces
set shiftwidth=2        "indents
filetype plugin indent on	"filetype specific indents
cmap w!! w !sudo tee >/dev/null %
set ai                  "auto indent
set si                  "smart indent
set backspace=indent,eol,start
set ww=<,>,[,]          "wrap

"theme options
let base16colorspace=256
colorscheme base16-eighties

"airline options
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='base16_eighties'

"syntastic options
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_java_javac_classpath = "./lib/*.jar\n./src"

"view saving
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

"nerdtree
"show hidden files
let NERDTreeShowHidden=1
"open on vim open
autocmd vimenter * NERDTree
"switch to editing window
autocmd vimenter * wincmd p
"close if only nerdtree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
