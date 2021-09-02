set backspace=indent,eol,start
set tabstop=2
let mapleader = " "
syntax on

" Window Navigation
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j
nmap <C-h> <C-w>h

" netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

augroup netrw_mapping
	autocmd!
	autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
	nmap <buffer> l <CR>
	nmap <buffer> h	-
	nmap <buffer> q :bd<CR>
endfunction

" Leader shortcuts
nmap <leader>e :Lexplore<CR> "toggle netrw
nmap <leader>r :e $MYVIMRC<CR> "open vimrc

