set encoding=UTF-8
set fileencodings=UTF-8,CP949
syntax on
set number
set ruler
set autoindent
set smartindent
set nowrap
set tabstop=2
set shiftwidth=2
set termguicolors
set wrap

" fonts Settings -> italic & Bold fonts
highlight Comment cterm=italic ctermfg=Grey gui=italic
highlight Keyword cterm=italic ctermfg=Red gui=italic
highlight Function cterm=italic ctermfg=LightRed gui=italic

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.config/nvim/after')

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'neovim/nvim-lspconfig'
Plug 'cohama/lexima.vim'
Plug 'folke/trouble.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lualine/lualine.nvim'

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

Plug 'savq/melange-nvim'
Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }

call plug#end()

colorscheme melange
" colorscheme nordic

" Compile Option and Key Mapping
let g:python3_host_prog = 'path/to/python3'

au FileType python nmap <buffer> <F5> :term python %<CR>
au FileType c nmap <buffer> <F5> :term gcc % && ./a.out<CR>

" ctags settings for NERDTree
let g:tagbar_ctags_bin = "/opt/homebrew/bin/ctags"
let g:Tlist_Ctags_Cmd='/opt/homebrew/bin/ctags/5.8_1/bin/ctags'

" NERDTree Key Mapping
nmap <A-v> :NERDTree <bar> <CR>
nmap <A-b> :NERDTreeClose <bar> <CR>

" annotaion key map
vmap <A-/> :norm i# <CR>
imap <A-/> # <CR>

" save key map
nmap <A-s> :w <CR>
nmap <A-S> :wq <CR>

" undo, redo key map
nmap <A-z> :undo <CR>
nmap <A-Z> :redo <CR>

" delete 1 line
nmap <A-Bs> dd <CR>

" copy to clipboard
vmap <A-c> :'<, '> :w !pbcopy <CR>
