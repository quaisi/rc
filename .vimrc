set nocompatible        " use vim defaults

"turn off start message
set shortmess+=I

""Colorscheme
colorscheme evening

"cursor follows search
set incsearch

"don't highlight search 
set nohlsearch

""highlight current line
set cursorline

"number lines
set number 

"256 colors
"set term=xterm-256color
"statusbar at bottom
set laststatus=1


"stop words wrapping in middle
set linebreak

"turn off case sensitity in searches
set smartcase

"emulate shell file completion
set wildmode=longest,list

"show/hide NERDTREE F2
map <F2> :NERDTreeToggle<CR>

noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set backspace=indent,eol,start  " make that backspace key work the way it should


syntax on               " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

set t_RV=               " http://bugs.debian.org/608242,
"http://groups.google.com/group/vim_dev/browse_thread/thread/9770ea844cec3282

"4 space tab 
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab


" Pathogen plugin handler
call pathogen#infect() 


map <F3> :SyntasticCheck<CR>
let g:syntastic_check_on_open=1 
let g:syntastic_enable_signs=1 
let g:syntastic_enable_highlighting=1 
let g:syntastic_auto_loc_list=1 
let g:syntastic_loc_list_height=5 
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['python', 'javascript', 'css', 'coffee', 'go', 'html', 'rst', 'sass', 'yaml'], 'passive_filetypes': ['make'] } 
let g:syntastic_python_checker = 'flake8' 
let g:syntastic_javascript_checker = 'jslint' 

