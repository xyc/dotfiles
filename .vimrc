set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

Bundle 'altercation/vim-colors-solarized'
set number
syntax enable
set background=dark
"let g:solarized_termcolors = 256
if !has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
endif
colorscheme solarized

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set laststatus=2
set guifont=Menlo\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Disable background color erase (BCE)
set t_ut=

"syntax on
"set smartindent
"set autoindent
"set tabstop=4
set softtabstop=4
set shiftwidth=4
"set smarttab
set expandtab
"set number
"set ruler

"set foldmethod=indent
"nnoremap <space> za
"vnoremap <space> zf
set pastetoggle=<F2>
nnoremap <F3> :set nonumber!<CR>


filetype plugin on
" Real tabs in JS as well
autocmd FileType js setlocal noexpandtab shiftwidth=4 omnifunc=javascriptcomplete

Bundle 'SuperTab'

"http://vim.wikia.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix
"Clear the PAGER environment variable inside of Vim. This is to handle the
"case where you start Vim normally and want to use Vim's "Man" function
let $PAGER=''
