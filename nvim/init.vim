call plug#begin('~/.nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jbgutierrez/vim-better-comments'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

call plug#end()

lua require('blay')

"""""""""""""""""""""

"Looks
let g:codedark_transparent=1
colorscheme codedark
let g:airline_powerline_fonts = 1
let g:airline_theme='codedark'
"set background=light
set number
set relativenumber

"Syntax
syntax on
set redrawtime=10000000
autocmd BufEnter * :syntax sync fromstart
highlight ErrorBetterComments ctermfg=255 ctermbg=124
"highlight HighlightBetterComments ctermfg=255 ctermbg=100
highlight QuestionBetterComments ctermfg=255 ctermbg=17
"highlight TodoComments ctermfg=255 ctermbg=142
"highlight StrikeoutBetterComments ctermfg=0 ctermbg=0

"Tabulators
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4

"Key bindings
set mouse=a
nmap <F2> :NERDTreeToggle<CR>
nmap <S-Left> gT
nmap <S-Right> gt
inoremap <silent><expr> <S-tab> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"

"Misc
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
filetype plugin on
set clipboard=unnamedplus
set incsearch
syntax on
