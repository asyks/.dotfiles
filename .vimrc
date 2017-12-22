" syntax highlighting
syntax on

" dark background
set background=dark

" indentation rules and plugins
filetype plugin indent on

" use 256 colors
set t_Co=256

" visual formatting
set number
set relativenumber
set nowrap
colorscheme delek
hi Search term=standout ctermfg=0 ctermbg=11

" set default tab behavior
set tabstop=4
set shiftwidth=4
set expandtab

" set filetype specific tab behavior
au FileType yaml setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et
au FileType json setl sw=2 sts=2 et

" search highlighting settings
set hlsearch

" split pane settings
set splitbelow
set splitright

" don't put a line under the cursor
set nocursorline

" vim pathogen (https://github.com/tpope/vim-pathogen#pathogenvim)
execute pathogen#infect()
execute pathogen#helptags()

" set a default explorer mode style
let g:netrw_liststyle=3

" custom shortcuts
map <F8> :tabp<CR>
map <F9> :tabn<CR>
