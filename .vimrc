filetype plugin indent on " Allows plugins

set number          " Allows line numbers
set incsearch       " Starts searching as soon as you start typing
set ignorecase      " Ignores case in searches, so "WoRd" == "word"
set smartcase       " Makes things case-sensitive if you use uppercase
set tabstop=4       " Sets tab characters to 4 spaces
set shiftwidth=4    " Makes >> indent by 4 spaces
set expandtab       " Makes the tab key insert spaces instead of tab characters
set ai              " Auto-indentation based on the previous line

syntax on           " Turns on syntax highlighting

let &colorcolumn=80 " Highlights the 80th column of a file in black
highlight ColorColumn ctermbg=235 guibg=#2c2d27

