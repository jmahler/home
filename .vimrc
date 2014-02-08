" ~/.vimrc

" These commands should be run under X
" TODO - detect whether under X or console and set accordingly.
" http://vim.sourceforge.net/tips/tip.php?tip_id=471
" set mouse=a
" :help pastetoggle
" :help wheel
" :help keycodes
" set pastetoggle=<C-p>

"map <C-h> :N<CR>
"map <C-l> :n<CR>

"nnoremap <F1> <Nop>
"map <F1> :!make<CR>
"
set modeline

syntax on
"ab W w
"set hlsearch
set incsearch
"set noignorecase
set ignorecase

set showmatch

"set bg=dark

" changelog header
"map <F2> :read !date -R && echo $EMAIL<CR>kJi <Esc>A  ?<Esc>
"map <F2> :read !date -R<CR>

" format
"map <F3> Jxi<CR><Esc>

"set dictionary=/usr/share/dict/words

" turn on line numbering
"set nu

" expand tabs by using spaces
"set expandtab

"set paste
"set noautoindent
" fix stair stepping
"set autoindent
"set nocindent
"set smartindent

set autowrite
set autoread

set tabstop=4
set shiftwidth=4

"if has("autocmd")
"    au BufReadPost *
"        \ if exists("b:current_syntax") && b:current_syntax == "xml" |
"        \   set tabstop=2 |
"        \   set shiftwidth=2 |
"        \ else |
"        \   set tabstop=4 |
"        \   set shiftwidth=4 |
"        \ endif
"endif

" Octave Syntax
"augroup filetypedetect
"    au! BufRead,BufNewFile *.m setfiletype octave
"augroup END

if has("autocmd")
    au BufReadPost * nmap <F2> :setlocal spell spelllang=en_us<CR>
endif
"      \     nmap <F8> :w<CR>:!aspell -c %<CR>:e<CR> |
":nmap <F8> :w<CR>:!aspell -c %<CR>:e<CR>
":autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>


":highlight Folded guibg=grey guifg=blue
":highlight FoldColumn guibg=darkgrey guifg=white
:highlight Folded term=standout ctermfg=darkblue ctermbg=black

" vim-latexsuite
" XXX - 6/3/11 filetype plugin on causes hang on edit of perl .pl files
"filetype plugin on
"set grepprg=grep\ -nH\ $*
"filetype indent on
"let g:tex_flavor='latex'

" automatic comment inserting
if has("autocmd")
	filetype plugin indent on
endif


set foldmethod=marker
" vim:syntax=vim
