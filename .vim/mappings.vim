"map=alias|imap=insertmode|nmap=normalmode"
" comments cannot be on same line as mapping

" Better Save functionality "
nmap <Leader>w :w<cr>

" Toggle fold "
nnoremap <s-tab> za

" Quick edit the Vimrc rc "
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Quick edit the plugins file "
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

" Quick edit the mappings file "
nmap <Leader>em :tabedit ~/.vim/mappings.vim<cr>

" Quick edit a Vim snippets file "
nmap <Leader>es :e ~/.vim/snippets/

" Simple search highlight removal "
nmap <Leader><space> :nohlsearch<cr>

" Shortcut to foldlevel "
nmap <Leader>t :set foldlevel=

" Sort the PHP use declarations "
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-"}'<cr>

"------------LARAVEL-MAPS---------"
nmap <Leader>lm :!php artisan make:

"-----------PLUGIN-MAPS----------"

" Make NERDTree easier to toggle "
nmap <Leader>` :NERDTreeToggle<cr>

" Easy search for tags/vars in file "
nmap <C-R> :CtrlPBufTag<cr>

" Easy search for most recent files "
nmap <C-E> :CtrlPMRU<cr>

" Show GitGutter line diff highlights
nmap <Leader>gd :GitGutterLineHighlightsToggle<cr>

" PDV document
autocmd FileType php noremap <Leader>d :call pdv#DocumentWithSnip()<CR>
" autocmd FileType php noremap <buffer> <C-a> :call pdv#DocumentWithSnip()<CR>

" PHP Namesapce
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

"-----------SPLIT-MANAGEMENT------"
set splitbelow
set splitright
" focus left
nmap <C-H> <C-W><C-H>
" focus right
nmap <C-L> <C-W><C-L>
" focus up
nmap <C-K> <C-W><C-K>
" focus down
nmap <C-J> <C-W><C-J>
" adjust sizes
nmap <S-Right> :vertical res -5<CR>
nmap <S-Left> :vertical res +5<CR>
" swap
nmap <C-G> <C-W><C-R>
