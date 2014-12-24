" ~/.vimrc

set modeline

syntax on
set hlsearch
set incsearch
set ignorecase

set showmatch

set autowrite
set autoread

set tabstop=4
set shiftwidth=4

if has("autocmd")
    au BufReadPost * nmap <F2> :setlocal spell spelllang=en_us<CR>
endif
"      \     nmap <F8> :w<CR>:!aspell -c %<CR>:e<CR> |
":nmap <F8> :w<CR>:!aspell -c %<CR>:e<CR>
":autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>

:highlight Folded term=standout ctermfg=darkblue ctermbg=black

" automatic comment inserting
if has("autocmd")
	filetype plugin indent on
endif

set foldmethod=marker
" vim:syntax=vim
