set mouse=a
set number
set nocompatible
set tabstop=4
set autoindent

set textwidth=80
set wrapmargin=2

filetype plugin indent on
syntax on
set cursorline

call plug#begin()

		Plug 'vimwiki/vimwiki'
		Plug 'catppuccin/nvim', {'as': 'catppuccin'}
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:catppuccin_flavour = "macchiato"

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin

let g:airline_theme='base16_ashes'
let g:airline_powerline_fonts = 1

let mapleader=" "

let g:vimwiki_list =[{ 'path': '~/migranz/', 'path_html': '~/migranz-html/'}]
