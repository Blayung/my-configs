call plug#begin('~/.nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"""""""""""""""""""""

"Looks
let g:codedark_transparent=1
colorscheme codedark
let g:airline_powerline_fonts = 1
let g:airline_theme='codedark'
"set background=light
set number
set relativenumber

"Tabulators
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4

"Key bindings
nmap <F2> :NERDTreeToggle<CR>
nmap <S-Left> gT
nmap <S-Right> gt

"Misc
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
set clipboard=unnamedplus
set incsearch
