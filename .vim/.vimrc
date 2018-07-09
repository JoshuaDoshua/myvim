set nocompatible " we want the latest Vim settings

"-----BASIC-------------"
set encoding=utf8 " default encoding
set backspace=indent,eol,start " make backspace work in edit mode
set linespace=15 " set GUI linespace
set autowriteall " auto write the file when switching buffers
set complete=.,w,b,u " set autocomplete references

set tabstop=2 " number of spaces for a tab
set shiftwidth=2 " number of spaces for each (auto) indent
set softtabstop=2 " number of spaces for fake indents
"set showtabline=0

"-----VISUALS-------------"
syntax enable
colorscheme atom-dark-256
colorscheme monokai
"set cursorline
"hi CursorLine term=bold cterm=bold guibg=Grey40
set guifont=DroidSansMono\ Nerd\ Font\ Book\ 20

set number " activate line numbers
set relativenumber " line numbers +/- relative to cursor
"set numberwidth=1 " set line number width
"highlight EndOfBuffer ctermfg=black ctermbg=black " for Vim 8.0
":hi NonText guifg=bg
set foldmethod=indent " [manual|indent|expr|marker|syntax|diff]
set foldlevel=1 " set the initial fold level
set foldcolumn=0 " where to show the fold indicaton
"set nofoldenable " disable folding
"set macligatures " pretty symbols when available

"-----SEARCHING-----------"
set hlsearch							" turn on search results highlighting
set incsearch							" incremental search until hit return

"-----AUTOCOMMANDS--------"
so ~/.vim/autocommands.vim

"-----MAPPINGS------------"
so ~/.vim/mappings.vim"

"-----SOURCE PLUGINS------"
so ~/.vim/plugins.vim
