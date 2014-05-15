colorscheme ron
syntax on

"unset
set nobackup
set nocompatible
set nojoinspaces
set noswapfile
set nowrapscan

"set
set ambiwidth=double
set autoindent
set backspace=indent,eol,start
set diffopt=filler,iwhite,vertical
set display=uhex
set clipboard=unnamed,autoselect
set expandtab
set fileformat=unix
set fileformats=unix,dos
set fileencoding=utf-8
set fileencodings=utf-8,cp932
set history=10000
set hlsearch
set incsearch
set laststatus=2
set list
set listchars=tab:>\ ,trail:-
set mouse=a
set number
set statusline=%<%f\ [%{&readonly?'RO':'RW'}][%{&fenc!=''?&fenc:&enc}][%{&ff}]%y[%1(%M%)]%=%l/%L(%3P),%3c,\ %03b,0x%02B
set tabstop=4
set whichwrap=b,s,h,l,<,>,~,[,]

"visible zenkaku-space
highlight ZenkakuSpace cterm=NONE ctermfg=NONE ctermbg=darkgrey
match ZenkakuSpace /　/

"clear highlight
nnoremap <ESC><ESC> :nohlsearch<CR>
