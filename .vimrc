set number
set showmatch
set tabstop=2
set linespace=1
set noshowmode
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'inkarkat/vim-ingo-library'
Plug 'jacoborus/tender.vim'
Plug 'inkarkat/vim-mark'
call plug#end()
set laststatus=2
set cursorline

syntax enable
colorscheme tender
if (has("termguicolors"))
 set termguicolors
endif

"airline plugin
let g:airline_theme='tender'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1

source ~/.vim/coc.vim
:imap jj <Esc>
:vmap jj <Esc>
