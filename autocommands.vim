" Clear the autocmd buffer, no duplicates | and auto src the vimrc file "
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc so %
augroup END

" Switch between line number modes on Insert_ "
au InsertEnter *	:set number
au FocusLost *		:set number
au InsertLeave *	:set relativenumber
au FocusGained *	:set relativenumber

" Auto Color highlight all the tizzime
"au BufRead,BufNewFile * :ColorHighlight

" Set custom filetypes "
au BufRead,BufNewFile *.module set filetype=php
au BufRead,BufNewFile *.vue set filetype=vue
au BufRead,BufNewFile *.zsh-theme set filetype=zsh
"au BufRead,BufNewFile *.ts set filetype=javascript
"au BufRead,BufNewFile *.json setlocal filetype=json

" Set file type fold methods"
"au FileType php set foldmethod=syntax

"-----SET 4 SPACE TABS ON CERTAIN PROJECTS-----"
"function! SetupEnvironment()
	" let l:path = expand('%:p')
	" if l:path =~ '/Users/power/Sites/lennox'
	" 	setlocal expandtab smarttab textwidth=0
	" 	setlocal tabstop=4 shiftwidth=4
	" elseif l:path =~ '/Users/power/Sites/Homestead/interlogix'
	" 	setlocal expandtab smarttab textwidth=0
	" 	setlocal tabstop=4 shiftwidth=4
	" elseif l:path =~ '/Users/power/Sites'
	" 	setlocal tabstop=2 shiftwidth=2
	" endif
" endfunction
" autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
