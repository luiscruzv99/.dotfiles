set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)

set nowrap  " No dividir la línea si es muy larga

set colorcolumn=120  " Muestra la columna límite a 120 caracteres

" Indentación a 2 espacios
set tabstop=4
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar d <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
  " Declare the list of plugins.
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-lua/completion-nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'godlygeek/tabular'
  Plug 'elzr/vim-json'
  Plug 'plasticboy/vim-markdown'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
  Plug 'chriskempson/base16-vim'
  " List ends here. Plugins become visible to Vim after this call.
call plug#end()

"if(has("termguicolors"))
 " set termguicolors
"endif
execute 'source ~/.config/nvim/nvim-tree.vim'

lua require('nvim-tree-setup')
lua require('lsp-config')



set completeopt=menuone,noinsert,noselect

syntax enable
colorscheme base16-ashes " Nombre del tema
set cursorline
highlight Cursor guifg=black guibg=white
hi CursorLine cterm=italic
set wildmenu
set wildmode=longest:list,full
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

autocmd BufEnter * lua require'completion'.on_attach()

nnoremap <F7> :w <Enter>
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
autocmd Filetype sd nnoremap <F8> :w !python compile.py % > out.html && wkhtmltopdf --enable-local-file-access -O "Landscape" -s A5 -B 1 -T 3 -L 1 -R 3 out.html out.pdf <CR>
autocmd Filetype ms nnoremap <F8> :!groff -ms % -T pdf -k > out.pdf <Enter>
autocmd Filetype c nnoremap <F8> :w !make <Enter>

autocmd ColorScheme PaperColor highlight Normal ctermbg=NONE guibg=NONE


let g:UltiSnipsExpandTrigger="<Tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsExpandTrigger="<C-J>"

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nnoremap <C-l> :Goyo<CR>

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

let g:mkdp_auto_close = 0

nnoremap <M-m> :MarkdownPreview<CR>

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
