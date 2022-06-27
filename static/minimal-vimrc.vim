"
" Un vimrc (no tan) mínimo.
"

" Usted quiere Vim, no vi. Cuando Vim encuentra un vimrc, 'nocompatible' se establece de todos modos.
" Lo fijamos explícitamente para dejar clara nuestra posición.
set nocompatible

filetype plugin indent on  " Cargar plugins según el tipo de archivo detectado.
syntax on                  " Activar el resaltado de sintaxis.

set autoindent             " Sangría según la línea anterior.
set expandtab              " Utilice espacios en lugar de tabulaciones.
set softtabstop =4         " La tecla de tabulación se desplaza 4 espacios.
set shiftwidth  =4         " >> sangrías de 4 espacios.
set shiftround             " >> se desplaza al siguiente múltiplo de 'shiftwidth'.

set backspace   =indent,eol,start  " Hacer que el retroceso funcione como se espera.
set hidden                 " Cambia entre los buffers sin tener que guardar primero.
set laststatus  =2         " Mostrar siempre la línea de estado.
set display     =lastline  " Muestra todo lo posible de la última línea.

set showmode               " Mostrar el modo actual en la línea de comandos.
set showcmd                " Mostrar las teclas ya tecleadas cuando se esperan más.

set incsearch              " Resalte mientras busca con / o ?.
set hlsearch               " Mantenga las coincidencias resaltadas.

set ttyfast                " Redibujado más rápido.
set lazyredraw             " Sólo se redibuja cuando es necesario.

set splitbelow             " Abrir nuevas ventanas debajo de la ventana actual.
set splitright             " Abrir nuevas ventanas a la derecha de la ventana actual.

set cursorline             " Encuentra rápidamente la línea actual.
set wrapscan               " Las búsquedas se ajustan al final del archivo.
set report      =0         " Informar siempre de las líneas modificadas.
set synmaxcol   =200       " Destaca sólo las primeras 200 columnas.

set list                   " Mostrar caracteres no imprimibles.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" La "fish shell" no es muy compatible con otras "shell" y esta rompe 
" inesperadamente las cosas que usan "shell".
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Coloca todos los archivos temporales en el mismo directorio.
" https://github.com/AsleyR/vim-galore/blob/main/README.md
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
