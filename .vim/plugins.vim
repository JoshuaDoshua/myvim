filetype off			" required

" set the runtime path to include Vundle and intialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'craigemery/vim-autotag' " ctags auto source
Plugin 'MarcWeber/vim-addon-mw-utils' " cache file auto
Plugin 'tomtom/tlib_vim' " utilities
Plugin 'tpope/vim-fugitive' " repo stuff

" visual/ide/editor
Plugin 'tpope/vim-vinegar' " dash browser
Plugin 'ctrlpvim/ctrlp.vim' " file searcher
Plugin 'airblade/vim-gitgutter' " git icons in gutters
Plugin 'vim-airline/vim-airline' " info bar at bottom
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree' " directory browser
Plugin 'ryanoasis/vim-devicons' " nerd-font integration
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " colored nerd tree
Plugin 'tpope/vim-sleuth' " auto-adjust indent options based on current file
Plugin 'Chiel92/vim-autoformat' " quick formatting

" common snippets
Plugin 'ervandew/supertab' " tab completions
Plugin 'tpope/vim-surround' " alter surrounding text
Plugin 'garbas/vim-snipmate' " auto snippets
Plugin 'SirVer/ultisnips' " user defined snippets
Plugin 'tpope/vim-commentary' " comment stuff out
"Plugin 'chrisbra/Colorizer' " css/html color highlighting Vim8
" syntax highlighting
Plugin 'tobyS/vmustache'
Plugin 'leafgarland/typescript-vim'
Plugin 'elzr/vim-json'
Plugin 'jwalton512/vim-blade'
Plugin 'posva/vim-vue'
Plugin 'StanAngelOff/php.vim' " php snippets/syntax
Plugin 'tobyS/pdv' " php documentor
Plugin 'arnaud-lb/vim-php-namespace' " types use statements for you
Plugin 'digitaltoad/vim-pug' " pugjs syntax
" other cool things
Plugin 'chrisbra/csv.vim' " csv viewer

" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'junegunn/vim-easy-align' " easy alignments
" Plugin 'tpope/vim-abolish' " find/replace easily
" Plugin 'vim-syntastic/syntastic' " syntax checking

" All of your plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required

"----Airline------"
let g:airline_powerline_fonts=0
let g:airline_theme='minimalist'

"----Tags---------"
"let g:autotagTagsFile=".tags"

"----Colorizer----"
let g:colorizer_auto_filetype='css,html,scss,sass,less'

"----CTRLP--------"
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|\.sass_cache\|build'
let g:ctrlp_match_window='min:1,max:30,results:30'

"----NERDTree-----"
let NERDTreeHijackNetrw=0
let NERDTreeShowHidden=1

"----DevIcons-----"
let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

"----PDV----------"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-a> :call pdv#DocumentWithSnip()<CR>

"-------PHP NAMESPACE--"
function! IPhpInsertUse()
	call PhpInsertUse()
	call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
	call PhpExpandClass()
	call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>f <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>f <Esc>:call PhpExpandClass()<CR>


