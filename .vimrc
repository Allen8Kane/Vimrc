call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"colorschemes
Plug 'morhetz/gruvbox'
Plug 'jaredgorski/fogbell.vim'

"code plugins
Plug 'jiangmiao/auto-pairs'
Plug 'valloric/youcompleteme'
call plug#end()


colorscheme gruvbox
"colorscheme fogbell

set background=dark
set number
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set t_Co=256
set mouse=a
set nobackup
set noswapfile
set autoindent
set encoding=utf-8
set fileencodings=utf8,cp1251
syntax on

"mappings
map <C-n> :NERDTreeToggle<CR>

"run code

"python
autocmd FileType python map <buffer> <F5> :w <CR>:!clear <CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w <CR>:!clear <CR>:exec '!python3' shellescape(@%, 1)<CR>

"c/c++
autocmd filetype c nnoremap <F5> :!clear <CR> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F5> :!clear <CR> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

"c#
autocmd FileType cs map <buffer> <F5> :w <CR>:!clear <CR>:exec '!dotnet run --no-build'<CR>

"java
autocmd FileType java map <buffer> <F5> :w <CR>:!clear <CR>:exec '!java' shellescape('%')<CR>

"golang
autocmd FileType go map <buffer> <F5> :w <CR>:!clear <CR>:exec '!go run' shellescape('%')<CR>

"nodejs
autocmd FileType javascript map <buffer> <F5> :w <CR>:!clear <CR>:exec '!node' shellescape('%')<CR>


