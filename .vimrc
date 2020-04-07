" ~/.vimrc

set modeline

syntax on
set hlsearch
set incsearch
set ignorecase

set showmatch

set autowrite
set autoread

if has("autocmd")
    au BufReadPost * nmap <F2> :setlocal spell spelllang=en_us<CR>
endif
"      \     nmap <F8> :w<CR>:!aspell -c %<CR>:e<CR> |
":nmap <F8> :w<CR>:!aspell -c %<CR>:e<CR>
":autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>

nmap <F3> :r !echo -n "Reviewed-by: $EMAIL"<CR>

:highlight Folded term=standout ctermfg=darkblue ctermbg=black

" automatic comment inserting
if has("autocmd")
	filetype plugin indent on
endif

set tw=72
"au FileType gitcommit set tw=72
"au FileType text set tw=72
"au FileType diff set tw=72

set tabstop=4
set shiftwidth=4

au FileType c set ts=8 sw=8
au FileType cpp set ts=8 sw=8

au FileType mail set expandtab

au Syntax yaml set expandtab
au Syntax javascript set ts=2 sw=2 et

set foldmethod=marker
" vim:syntax=vim
