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
  Plug 'tpope/vim-sensible'
  Plug 'junegunn/seoul256.vim'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'dylanaraps/wal.vim'
  Plug 'mhartington/oceanic-next'
  " List ends here. Plugins become visible to Vim after this call.
call plug#end()

if(has("termguicolors"))
  set termguicolors
endif

set background=light  " Fondo del tema: light o dark
syntax enable
colorscheme OceanicNext " Nombre del tema
set cursorline
hi CursorLine cterm=italic
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

nnoremap <F7> :w <Enter>
autocmd Filetype sd nnoremap <F8> :w !python test.py % > out.html && wkhtmltopdf --enable-local-file-access -O "Landscape" -s A5 -B 1 -T 3 -L 1 -R 3 out.html out.pdf <Enter>
autocmd Filetype ms nnoremap <F8> :!groff -ms % -T pdf -k > out.pdf <Enter>
autocmd Filetype c nnoremap <F8> :w !make <Enter>

autocmd ColorScheme PaperColor highlight Normal ctermbg=NONE guibg=NONE

