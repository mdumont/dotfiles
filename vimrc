color darkblue
syn on
set background=dark
set filetype=on
set incsearch
set ignorecase
set number
set hlsearch
set smartcase
set scrolloff=2
set tabstop=4
set expandtab
set shiftwidth=4
set foldmethod=indent
set foldlevelstart=20
set nocompatible
set ruler
set previewheight=1
set smartindent
set showmatch
set backspace=indent,eol
"set list
function! SwitchSourceHeader()
if (expand ("%:t") == expand("%:t:r") . ".c")
	w
	find %:t:r.h
else
	w
	find %:t:r.c
endif
endfunction

nmap ,s :call SwitchSourceHeader()<CR>
nmap <F3> :tabp<CR>
nmap <F4> :tabn<CR>
