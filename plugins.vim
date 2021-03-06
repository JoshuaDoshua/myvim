filetype off " required

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
Plugin 'Xuyuanp/nerdtree-git-plugin' " git icons in nerdtree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " colored nerd tree
"Plugin 'tpope/vim-sleuth' " auto-adjust indent options based on current file
Plugin 'Chiel92/vim-autoformat' " quick formatting
Plugin 'majutsushi/tagbar' " vim tagbar document summary
Plugin 'docunext/closetag.vim' " smart html close tags
"Plugin 'Yggdroot/indentLine' " spaced indent chars
"Plugin 'nathanaelkane/vim-indent-guides' " indent highlighting
" <Leader>ig

" common snippets
Plugin 'ervandew/supertab' " tab completions
Plugin 'tpope/vim-surround' " alter surrounding text
Plugin 'garbas/vim-snipmate' " auto snippets
Plugin 'SirVer/ultisnips' " user defined snippets
Plugin 'tpope/vim-commentary' " comment stuff out
"Plugin 'chrisbra/Colorizer' " css/html color highlighting Vim8
"Plugin 'ap/vim-css-color' " css color highlighting
"Plugin 'shmargum/vim-sass-colors' " sass var color highlighting

" syntax highlighting
"Plugin 'flazz/vim-colorschemes'
"Plugin 'tobyS/vmustache'
Plugin 'leafgarland/typescript-vim'
"Plugin 'jwalton512/vim-blade'
"Plugin 'posva/vim-vue'
Plugin 'StanAngelOff/php.vim' " php snippets/syntax
Plugin 'tobyS/pdv' " php documentor
Plugin 'arnaud-lb/vim-php-namespace' " types use statements for you
"Plugin 'digitaltoad/vim-pug' " pugjs syntax
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'

" other cool things
"Plugin 'chrisbra/csv.vim' " csv viewer
"Plugin 'dhruvasagar/vim-table-mode' " md tables
"Plugin 'mhinz/vim-startify' " fancy start screen

" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'junegunn/vim-easy-align' " easy alignments
" Plugin 'tpope/vim-abolish' " find/replace easily
" Plugin 'vim-syntastic/syntastic' " syntax checking

" call last
Plugin 'ryanoasis/vim-devicons' " nerd-font integration

call vundle#end()		" required
filetype plugin indent on	" required

"----Javascript---"
"set conceallevel=1
"let g:javascript_conceal_arrow_function='⇒'

"----IndentLine---"
"let g:indentLine_char = 'c'

"----IndentGuides-"
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" let g:indent_guides_start_level=2
" let g:indent_guides_guide_size=1

"----Airline------"
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

"----Tags---------"
"let g:autotagTagsFile=".tags"

"----Colorizer----"
"let g:colorizer_auto_filetype='css,html,scss,sass,less,vue,js'

"----CTRLP--------"
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|\.sass_cache\|build'
let g:ctrlp_match_window='min:1,max:30,results:30'

"----NERDTree-----"
let g:NERDTreeHijackNetrw=0
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.swp*','\.swo$','^.git$']
let g:NERDTreeMinimalUI=1
"let g:NERDTreeDirArrowExpandable=">"
" open nerd tree if no file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"----NERDTree Git-----"
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
" \ }

"----DevIcons-----"
let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:WebDevIconsNerdTreeAfterGlyphPadding=' '
let g:WebDevIconsUnicodeDecorateFolderNodes=1

let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitignore'] = ""
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.jenkins'] = ""
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitkeep'] = ""

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['lock'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['map'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['woff'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['woff2'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['eot'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['otf'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ttf'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['svg'] = '縉'

"----NERDTreeSyntaxHighlighting-----"
let g:NERDTreeHighlightFolders=1
let g:NERDTreeHighlightFoldersFullName=1
"let g:NERDTreeExactMatchHighlightFullName=1
"let g:NERDTreeFileExtensionHighlightFullName=1

let s:vue_green='39AF78'
let s:git_orange = 'F54D27'
let s:jenkins = 'EED0AE'

let g:NERDTreeExtensionHighlightColor={}
let g:NERDTreeExtensionHighlightColor['vue']=s:vue_green

let g:NERDTreeExactMatchHighlightColor={}
let g:NERDTreeExactMatchHighlightColor['.gitignore']=s:git_orange
let g:NERDTreeExactMatchHighlightColor['.jenkins']=s:jenkins

"performance issues
"let g:NERDTreeDisableExactMatchHighlight=1
"let g:NERDTreeDisablePatternMatchHighlight=1
"let g:NERDTreeSyntaxDisableDefaultExtensions=1
"let g:NERDTreeSyntaxEnabledExtensions=['php','js','css','sass','scss','vue']
"let g:NERDTreeHighlightCursorLine=0

"----PDV----------"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
