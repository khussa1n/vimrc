syntax on
set number
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
set belloff=all
set backspace=indent,eol,start
inore jj <Esc>
set guifont=Consolas:h16cRUSSIAN
syntax enable
"colorscheme delek
set clipboard=unnamedplus

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

inoremap ( ()<Left>
inoremap (( (
inoremap () ()

set noundofile
set nobackup
set noswapfile

set smarttab
set expandtab
set softtabstop=4 
set shiftwidth=4 
set autoindent
set smartindent

set mousehide
set mouse=a

set wrap
set linebreak

set ruler
"autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 -O2 -Wall % -o %:r && %:r.exe <CR>

map <F5> :call CompileRun()<CR>
func! CompileRun()
exec "w"
if &filetype == 'cpp'
exec "!g++ -std=c++14 -O2 -Wall % -o %:r && %:r.exe"
elseif &filetype == 'java'
exec "!javac % && java %" 
elseif &filetype == 'py'
exec "!python %"
elseif &filetype == 'html'
exec "!google % &"
elseif &filetype == 'js'
exec "!node %"
endif
endfunc
