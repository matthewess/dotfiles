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
set tabstop=4			"number of visual spaces per TAB when reading
set softtabstop=4		"number of spaces per TAB when editing
set expandtab			"tabs are spaces
set shiftwidth=4        "indents
filetype plugin indent on	"filetype specific indents
cmap w!! w !sudo tee >/dev/null %
set ai                  "auto indent
set si                  "smart indent
set backspace=indent,eol,start
set ww=<,>,[,]          "wrap

"theme options
set background=dark
let base16colorspace=256
colorscheme base16-eighties

"airline options
set laststatus=2
let g:airline_powerline_fonts=1

"syntastic options
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_java_javac_classpath = "./lib/*.jar\n./src"

"view saving
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview
