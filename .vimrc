set nocompatible              				" we want the latest Vim settings

"-----SOURCE PLUGIN OPTS-----------"
so ~/.vim/plugins.vim

"-----------BASIC------------------"
syntax enable

set backspace=indent,eol,start				" make backspace work like a backspace in edit mode
let mapleader=','										" the default leader is / but i like ,
set linespace=15										" set GUI linespace
set autowriteall											" auto write the file when switching buffers
set complete=.,w,b,u									" set autocomplete references
set tabstop=2													" number of spaces for a tab
set shiftwidth=2											" number of spaces for each (auto) indent
set softtabstop=2											" number of spaces for fake indents

"-----------VISUALS--------------"
colorscheme atom-dark-256
set guifont=DroidSansMono\ Nerd\ Font\ Book\ 20
set encoding=utf8											" default encoding

set number														" activate line numbers
set relativenumber										" line numbers +/- relative to cursor
" set nofoldenable										" disable folding
set foldmethod=indent									" [manual|indent|expr|marker|syntax|diff]
set foldlevel=1												" set the initial fold level
set foldcolumn=2											" where to show the fold indicaton
" set macligatures										" pretty symbols when available

"-----------SEARCHING--------------"
set hlsearch						" turn on search results highlighting
set incsearch						" incremental search until hit return

"-----------MAPPINGS-------------------"
"map=alias|imap=insertmode|nmap=normalmode"

" Better Save functionality "
nmap <Leader>w :w<cr>

" Toggle fold "
nnoremap <s-tab> za

" Quick edit the Vimrc rc "
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Quick edit the plugins file "
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

" Quick edit a Vim snippets file "
nmap <Leader>es :e ~/.vim/snippets/

" Simple search highlight removal "
nmap <Leader><space> :nohlsearch<cr>

" Make NERDTree easier to toggle "
nmap <Leader>` :NERDTreeToggle<cr>

" Easy search for tags/vars in file "
nmap <C-R> :CtrlPBufTag<cr>

" Easy search for most recent files "
nmap <C-E> :CtrlPMRU<cr>

" Shortcut to foldlevel "
nmap <Leader>t :set foldlevel=

" Sort the PHP use declarations "
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-"}'<cr>

"------------Laravel Maps---------"
nmap <Leader>lm :!php artisan make:

"-----------SPLIT-MANAGEMENT------"
set splitbelow
set splitright

" up
nmap <C-K> <C-W><C-K>
" down
nmap <C-J> <C-W><C-J>
" left
nmap <C-H> <C-W><C-H>
" right
nmap <C-L> <C-W><C-L>

nmap <S-Right> :vertical res -5<CR>
nmap <S-Left> :vertical res +5<CR>

" swap
nmap <C-G> <C-W><C-R>


"-----------AUTO-COMMANDS---------------"
" Clear the autocmd buffer, no duplicates | and auto src the vimrc file "
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc so %
augroup END

" Switch between line number modes on Insert_ "
au InsertEnter * :set number
au FocusLost * :set number
au InsertLeave * :set relativenumber
au FocusGained * :set relativenumber

" Auto Color highlight all the tizzime
au BufRead,BufNewFile * :ColorHighlight

" Set custom filetypes "
au BufRead,BufNewFile *.module set filetype=php
au BufRead,BufNewFile *.ts set filetype=javascript
au BufRead,BufNewFile *.vue set filetype=vue
au BufRead,BufNewFile,BufReadPost *.json set syntax=json

" Set file type fold methods"
"au FileType php set foldmethod=syntax

"-----SET 4 SPACE TABS ON CERTAIN PROJECTS-----"
function! SetupEnvironment()
	let l:path = expand('%:p')
	if l:path =~ '/Users/power/Sites/lennox'
		setlocal expandtab smarttab textwidth=0
		setlocal tabstop=4 shiftwidth=4
	elseif l:path =~ '/Users/power/Sites/Homestead/interlogix'
		setlocal expandtab smarttab textwidth=0
		setlocal tabstop=4 shiftwidth=4
	elseif l:path =~ '/Users/power/Sites'
		setlocal tabstop=2 shiftwidth=2
	endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()

