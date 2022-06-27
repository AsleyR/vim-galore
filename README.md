<div align='center'>
  <br /><br /><br />
  <img src='https://raw.githubusercontent.com/mhinz/vim-galore/master/static/images/logo-vim-galore.png' alt='vim-galore logo' />
  <br /><br /><br /><br />
  <div>
    <a href='https://github.com/wsdjeg/vim-galore-zh_cn'>Chino Mandarín</a> |
    <a href='http://postd.cc/?s=vim-galore'>Japonés</a> |
    <a href='https://github.com/lsrdg/vim-galore'>Portugués</a> |
    <a href='http://givi.olnd.ru/vim-galore/vim-galore-ru.html'>Ruso</a> |
    <a href='https://github.com/kyoz/vim-galore-vi'>Vietnamita</a>
    <div>
      <br />
      <sub>Con licencia <a href='https://creativecommons.org/licenses/by-sa/4.0'>CC BY-SA 4.0<a/>.</sub>
    </div>
  </div>
  <br /><br />
</div>

### [Introducción](#intro-1)

- [¿Qué es Vim?](#qué-es-vim)
- [La Filosofía de Vim](#la-filosofía-de-vim)
- [Primeros pasos](#primeros-pasos)
- [Vimrc mínimo](#vimrc-mínimo)
- [¿Qué tipo de Vim estoy utilizando?](#¿qué-tipo-de-vim-estoy-utilizando)
- [Cheatsheets](#cheatsheets)

### [Conceptos Básicos](#conceptos-bc3a1sicos-1)

- [Buffers, ventanas, pestañas](#buffers-ventanas-pestañas)
- [Buffers activados, cargados, listados, y nombrados](#buffers-activados-cargados-listados-y-nombrados)
- [Lista de argumentos](#lista-de-argumentos)
- [Mapeos](#mapeos)
- [Tecla líder](#tecla-líder)
- [Registradores](#registradores)
- [Rangos](#rangos)
- [Marcadores](#marcadores)
- [Completadores](#completadores)
- [Movimientos, operadores, objetos de texto](#movimientos-operadores-objetos-de-texto)
- [Autocmds](#autocmds)
- [Lista de cambios, lista de salto](#lista-de-cambios-lista-de-salto)
- [Árbol de deshacer](#árbol-de-deshacer)
- [Quickfix y lista de ubicaciones](#quickfix-y-lista-de-ubicaciones)
- [Macros](#macros)
- [Esquema de colores](#esquema-de-colores)
- [Plegados](#plegados)
- [Sesiones](#sesiones)
- [Localidad](#localidad)

### [Utilización](#utilizacic3b3n-1)

- [Conseguir ayuda offline](#conseguir-ayuda-offline)
- [Conseguir ayuda offline (alternativo)](#conseguir-ayuda-offline-alternativo)
- [Conseguir ayuda online](#conseguir-ayuda-online)
- [Autocmds en la practica](#autocmds-en-la-practica)
  - [Eventos del usuario](#eventos-del-usuario)
  - [Autocmds anidados](#autocmds-anidados)
- [Portapapeles](#portapapeles)
  - [Uso de portapapeles (Windows, macOS)](#uso-de-portapapeles-windows-macos)
  - [Uso de portapapeles (Linux, BSD, ...)](#uso-de-portapapeles-linux-bsd)
- [Restaurar la posición del cursor al abrir un archivo](#restaurar-la-posición-del-cursor-al-abrir-un-archivo)
- [Archivos temporales](#archivos-temporales)
  - [Archivos de respaldo](#archivos-de-respaldo)
  - [Archivos Swap (Swap Files)](#archivos-swap)
  - [Deshacer archivos](#deshacer-archivos)
  - [Archivos viminfo](#archivos-viminfo)
  - [Ejemplo de configuración de archivos temporales](#ejemplo-de-configuración-de-archivos-temporales)
- [Editando archivos remotos](#editando-archivos-remotos)
- [Gestión de plugins](#gestión-de-plugins)
- [Inserción en bloque](#inserción-en-bloque)
- [Ejecución de programas externos y uso de filtros](#ejecución-de-programas-externos-y-uso-de-filtros)
- [Cscope](#cscope)
- [MatchIt](#matchit)
- [Verdaderos colores (True colors)](#true-colors)

### [Tips](#tips-1)

- [Ir al otro extremo del texto seleccionado](#go-to-other-end-of-selected-text)
- [Comportamiento más sano de n y N](#saner-behavior-of-n-and-n)
- [Uso más sano del historial de la línea de comandos](#saner-command-line-history)
- [Uso más sano del CTRL-L](#saner-ctrl-l)
- [Desactivar los timbres sonoros y visuales](#disable-audible-and-visual-bells)
- [Mover rápidamente la línea actual](#quickly-move-current-line)
- [Añadir rápidamente líneas vacías](#quickly-add-empty-lines)
- [Edite rápidamente sus macros](#quickly-edit-your-macros)
- [Saltar rápidamente a la cabecera o al archivo fuente](#quickly-jump-to-header-or-source-file)
- [Cambiar rápidamente el tamaño de la fuente en la interfaz gráfica de usuario](#quickly-change-font-size-in-gui)
- [Cambiar el estilo del cursor en función del modo](#change-cursor-style-dependent-on-mode)
- [No perder la selección al cambiar de lado](#dont-lose-selection-when-shifting-sidewards)
- [Recargar un archivo al guardar](#reload-a-file-on-saving)
- [Cursor más inteligente](#smarter-cursorline)
- [Completación más rapida de palabras claves](#faster-keyword-completion)
- [Cambios cosméticos a los esquemas de color](#cosmetic-changes-to-colorschemes)

### [Comandos](#comandos-1)

- [:global y :vglobal](#global-and-vglobal) - Ejecutar un comando en todas las líneas coincidentes.
- [:normal y :execute](#normal-and-execute) - El dream team de los guiones.
- [:redir y execute()](#redir-and-execute) - Capturar la salida del comando.

### [Debugging](#debugging-1)

- [Tips generales](#general-tips)
- [Verbosidad (Comando `verbose`)](#verbosity)
- [Perfilando el tiempo de inicio](#profiling-startup-time)
- [Perfilando en tiempo de ejecución](#profiling-at-runtime)
- [Debugging los scripts Vim](#debugging-vim-scripts)
- [Debugging archivo de sintaxis](#debugging-syntax-files)

### [Miscelánea](#miscelánea-1)

- [Recursos adicionales](#additional-resources)
- [Distribucciones de Vim](#vim-distributions)
- [Plugins standard](#standard-plugins)
- [Mapear CapsLock a Control](#map-capslock-to-control)
- [Generar HTML del buffer](#generating-html-from-buffer)
- [Easter eggs](#easter-eggs)
- [¿Por qué hjkl para la navegación?](#why-hjkl-for-navigation)

### [Problemas comunes](#problemas-comunes-1)

- [La edición de archivos pequeños es lenta](#editing-small-files-is-slow)
- [La edición de archivos grandes es lenta](#editing-huge-files-is-slow)
- [Pegar entre corchetes (o ¿por qué tengo que poner "pegar" todo el tiempo?)](#bracketed-paste-or-why-do-i-have-to-set-paste-all-the-time)
- [Retrasos al utilizar la tecla de escape en el terminal](#delays-when-using-escape-key-in-terminal)
- [Deshacer función de busqueda (function-search-undo)](#function-search-undo)

### [Peculiaridades técnicas](#peculiaridades-técnicas-1)

- [Nueva linea utilizada para NUL](#newline-used-for-nul)

### [Terminología](#terminología-1)

- [Vim script? Vimscript? VimL?](#vim-script-vimscript-viml)

### [Lista de esquemas de colores](PLUGINS.md#colorschemes-1)

### [Lista de plugins](PLUGINS.md)

<br>

# Introducción

## Qué es Vim?

[Vim](http://www.vim.org) es un editor de texto con una larga línea de ancestros que se remonta a [qed](https://en.wikipedia.org/wiki/QED_(text_editor)). [Bram
Moolenaar](https://es.wikipedia.org/wiki/Bram_Moolenaar) lo lanzó en 1991.

El proyecto está alojado en línea en [vim.org](http://www.vim.org/index.php).

Conseguir Vim: Utilice su gestor de paquetes favorito o visite la [página de descarga](http://www.vim.org/download.php) de vim.org

Discusiones y preguntas de los usuarios se realizan mejor en la lista de correo
[vim_use](https://groups.google.com/forum/#!forum/vim_use) o utilizando
IRC ([Freenode](https://freenode.net)) en el canal `#vim`.

El desarrollo se realiza en [GitHub](https://github.com/vim/vim), las discusiones en la lista de correo
[vim_dev](https://groups.google.com/forum/#!forum/vim_dev).

Lea [¿Por qué, oh POR QUÉ, esos #?@! chiflados usan vi?](http://www.viemu.com/a-why-vi-vim.html) para ver explicadas las ideas erróneas más comunes sobre Vim.

## La Filosofía de Vim

Vim se adhiere a la filosofía de edición modal. Esto significa que ofrece múltiples modos y el significado de las teclas cambia según el modo. Navegas por los archivos en el _modo normal_, insertas texto en el _modo de inserción_, seleccionas líneas en el _modo visual_, accedes a los comandos en el modo de _línea de comandos_, etc. Esto puede parecer complicado al principio, pero tiene una gran ventaja: no tienes que romperte los dedos sujetando varias teclas a la vez, la mayoría de las veces simplemente las pulsas una tras otra. Cuanto más común sea la tarea, menos teclas se necesitan.

Un concepto relacionado que funciona bien con la edición modal son los operadores y los movimientos. _Los operadores_ inician una acción determinada, por ejemplo, cambiar, eliminar o seleccionar texto. Después se especifica la región del texto sobre la que se quiere actuar mediante un _movimiento_. Para cambiar todo lo que está entre paréntesis, utilice `ci` (léase _cambiar el paréntesis interior_). Para eliminar un párrafo entero de texto, utilice `dap` (léase _eliminar alrededor del párrafo_).

Si ves trabajar a los usuarios avanzados de Vim, te darás cuenta de que hablan _el lenguaje de Vim_ tan bien como los pianistas manejan sus instrumentos. Las operaciones complejas se realizan con sólo pulsar unas pocas teclas. Ni siquiera piensan en ello, ya que la [memoria muscular](https://es.abcdef.wiki/wiki/Muscle_memory) <!-- No pude encontrar un articulo de Wikipedia sobre la memoria muscular --> se ha hecho cargo. Esto reduce la [carga cognitiva](https://es.frwiki.wiki/wiki/Charge_cognitive) <!-- No pude encontrar un articulo de Wikipedia sobre la carga cognitiva --> y ayuda a concentrarse en la tarea que uno está haciendo.

## Primeros Pasos

Vim viene con un tutorial interactivo que enseña las cosas más básicas que necesitas saber. Puedes iniciarlo desde la terminal:

```
$ vimtutor
```

No te desanimes por lo aburrido que parece y trabaja con los ejercicios. Los editores o IDEs que utilizabas antes eran probablemente todos no modales, así que trabajar cambiando de modo te parecerá incómodo al principio, pero cuanto más utilices Vim, lo más todo se convierte en [memoria muscular](https://es.abcdef.wiki/wiki/Muscle_memory). <!-- No pude encontrar un articulo de Wikipedia sobre la memoria muscular -->

Vim fue agrupado con [Stevie](https://en.wikipedia.org/wiki/Stevie_(text_editor))<!-- No pude encontrar un articulo de Wikipedia sobre Stevie editor -->, un clon de [vi](https://es.wikipedia.org/wiki/Vi), y gracias a esto ahora Vim soporta dos modos de funcionamiento: "compatible" y "nocompatible". Usar Vim en modo compatible significa usar los valores predeterminados de vi para todas las opciones, en oposición a los valores predeterminados de Vim. Mientras no haya creado un vimrc de usuario o haya iniciado Vim con `vim -N`, se asume el modo compatible. No uses Vim en modo compatible. Simplemente no lo hagas.

Próximos pasos:

1. Crea tu propio [vimrc](#vimrc-mínimo).
2. Ten preparadas algunas [cheatsheets](#cheatsheets) listas para las primeras semanas.
3. Lea la sección de [conceptos basicos](#conceptos-bc3a1sicos-1) para saber qué es incluso posible en vim.
4. ¡Aprende a la marcha! Uno nunca termina de aprender Vim. Si te encuentras con algún problema, sólo tienes que buscarlo en Internet. Tu problema ya está resuelto. Vim viene con una gran documentación y saber cómo navegar por ella es imprescindible:
   [Conseguir ayuda fuera de línea](#conseguir-ayuda-offline).
5. Echa un vistazo a los [recursos adicionales](#recursos-adicionales).

Un último consejo: Por favor, aprende a usar Vim correctamente antes de empezar a añadir todo tipo de [plugins](#managing-plugins) exagerados que sólo implementan características que Vim ya soporta de forma nativa.

## Vimrc mínimo

El vimrc del usuario se puede poner en `~/.vimrc` o para una mejor separación en `~/.vim/vimrc`. Este último facilita poner toda la configuración bajo control de versiones y subirla a, digamos, GitHub.

Se encuentran muchos "vimrcs mínimos" por toda el internet, y tal vez mi versión no es tan mínima como debería ser, pero proporciona un buen conjunto de ajustes sanos que considero útiles para empezar.

De todos modos, tienes que leer todos los ajustes mencionados y decidir por ti mismo. :-)

Así que aquí está: [vimrc-mínimo](static/minimal-vimrc.vim)

<!-- FINISH HERE -->

Por si te interesa, aquí está el [vimrc de _mhinz_](https://github.com/mhinz/dotfiles/blob/master/.vim/vimrc) (El creador original de Vim-Galore).


**TIP**: La mayoría de los autores de plugins mantienen varios plugins y también publican sus vimrc en GitHub (a menudo en un repositorio llamado "vim-config" o "dotfiles"), así que cuando encuentres un plugin que te guste, busca la página de GitHub de su mantenedor y busca en los repositorios.

## ¿Qué tipo de Vim estoy utilizando?

Mirando `:version` le dará toda la información que necesita saber sobre cómo se compiló el binario de Vim que se está ejecutando actualmente.

La primera línea indica cuándo se compiló el binario y la versión, por ejemplo, 7.4. Una de las siguientes líneas indica `Parches incluidos: 1-1051`, que es el nivel de parche. Por lo tanto, su versión exacta de Vim es 7.4.1051.

Otra línea indica algo así como `Versión diminuta sin GUI` o `Versión enorme con GUI`. La información obvia de esto es si su Vim incluye soporte de GUI, por ejemplo, para iniciar `gvim` desde el shell o ejecutar `:gui` desde Vim dentro de un emulador de terminal. La otra información importante es la de `Tiny` y `Huge`. Vim distingue entre conjuntos de características llamados `tiny`, `small`, `normal`, `big` y `huge`, todos ellos habilitando diferentes subconjuntos de características.

La mayor parte de la salida de `:version` es consumida por la propia lista de características. `+clipboard` significa que la función de portapapeles fue compilada, `-clipboard` significa que no fue compilada.

Algunas características de Vim necesitan ser compiladas para que funcionen. Por ejemplo, para que `:prof` funcione, se necesita un Vim con un enorme conjunto de características, porque ese conjunto permite la característica `+profile`.

Si no es el caso y has instalado Vim desde un gestor de paquetes, asegúrate de instalar un paquete llamado `vim-x`, `vim-x11`, `vim-gtk`, `vim-gnome` o similar, ya que estos paquetes suelen venir con el enorme conjunto de características.

También puede comprobar la versión o las características mediante programación:

```vim
" Hacer algo si ejecuta al menos Vim 7.4.42 con +profile activado.
if (v:version > 704 || v:version == 704 && has('patch42')) && has('profile')
  " hacer algo
endif
```

Comandos help:

```
:h :version
:h feature-list
:h +feature-list
:h has-patch
```

## Cheatsheets

- http://people.csail.mit.edu/vgod/vim/vim-cheat-sheet-en.png
- https://cdn.shopify.com/s/files/1/0165/4168/files/preview.png
- http://michael.peopleofhonoronly.com/vim/vim_cheat_sheet_for_programmers_screen.png
- http://www.rosipov.com/images/posts/vim-movement-commands-cheatsheet.png

O abra rápidamente un cheatsheet desde Vim: [vim-cheat40](https://github.com/lifepillar/vim-cheat40).

# Conceptos Básicos

## Búfers, ventanas, pestañas

Vim es un editor de texto. Cada vez que se muestra un texto, éste forma parte de un **búfer**. Cada archivo se abrirá en su propio búfer. Los plugins muestran cosas en sus propios búfers, etc.

Los búferes tienen muchos atributos, por ejemplo, si el texto que contiene es modificable o si está asociado a un archivo y, por tanto, debe sincronizarse con el disco al guardarlo.

**Las ventanas** son puertos de visualización _en_ los búferes. Si quieres ver varios archivos al mismo tiempo o incluso diferentes ubicaciones del mismo archivo, utilizas ventanas.

Y por favor, por favor, no los llames _splits_. Puedes partir una ventana en dos, pero eso no las convierte en _splits_.

Las ventanas pueden dividirse vertical u horizontalmente y también pueden modificarse las alturas y anchuras de las ventanas existentes. Por lo tanto, puede utilizar la distribución de ventanas que prefiera.

Una **página de pestañas** (o simplemente pestaña) es una colección de ventanas. Por lo tanto, si quieres usar múltiples diseños de ventanas, usa pestañas.

En pocas palabras, si inicias Vim sin argumentos, tendrás una página de pestañas que contiene una ventana que muestra un búfer.

Por cierto, la lista de búferes es global y puedes acceder a cualquier búfer desde cualquier pestaña.

## Buffers activados, cargados, listados, y nombrados

Ejecute Vim de esta forma `vim archivo1`. El contenido del archivo se cargará en un buffer. Ahora **tienes un buffer cargado**. El contenido del búfer sólo se sincroniza en el disco (se escribe de nuevo en el archivo) si lo guarda dentro de Vim.

Como el buffer también se muestra en una ventana, también es un **buffer activo**. Ahora, si carga otro archivo mediante `:e archivo2`, el `archivo1` se convertirá en un **búfer oculto** y el `archivo2` en el activo.

Ambos búferes también son **listados**, por lo que serán listados en la salida de `:ls`. Los búferes de los plugins o los búferes de ayuda suelen marcarse como no listados, ya que no son archivos normales que se suelen editar con un editor de texto. ¡Los buffers listados y no listados pueden ser mostrados a través de `:ls!`.

Los **búferes sin nombre**, también utilizados a menudo por los plugins, son búferes que no tienen un nombre de archivo asociado. Por ejemplo, `:enew` creará un búfer sin nombre. Añada algún texto y escríbalo en el disco mediante `:w /tmp/foo`, y se convertirá en un búfer con nombre.

## Lista de argumentos

La [lista global de búferes](#buffers-windows-tabs) es una cosa de Vim. Antes, en vi, sólo existía la lista de argumentos, que también está disponible en Vim.

Cada nombre de archivo dado a Vim en la línea de comandos del shell, se recuerda en la lista de argumentos. Puede haber varias listas de argumentos: por defecto todos los argumentos se ponen en la lista de argumentos global, pero puede usar `:arglocal` para crear una nueva lista de argumentos que sea local a la ventana.

Liste los argumentos actuales con `:args`. Cambie entre los archivos de la lista de argumentos con `:next`, `:previous`, `:first`, `:last` y friends. Alterarla con `:argadd`, `:argdelete` o `:args` con una lista de archivos.

Si prefiere usar el buffer o la lista de argumentos para trabajar con archivos es cuestión de gustos. Mi impresión es que la mayoría de la gente utiliza exclusivamente la lista de buffers.

Sin embargo, hay un caso de uso enorme para la lista de argumentos: el procesamiento por lotes a través de `:argdo!` Un simple ejemplo de refactorización:

```vim
:args **/*.[ch]
:argdo %s/foo/bar/ge | update
```

Reemplaza todas las apariciones de "foo" por "bar" en todos los archivos fuente y de cabecera de C del directorio en que se encuentre y de los siguientes.

Comando help: `:h argument-list`

## Mapeos

Puedes definir tus propios mapeos con la familia de comandos `:map`. Cada comando de esa familia define un mapeo para un determinado conjunto de modos. Técnicamente Vim viene con la friolera de 12 modos, 6 de los cuales pueden ser mapeados. Además, algunos comandos actúan sobre varios modos a la vez.

| Recursivo | No recursivo | Desmapeo (Unmap)     | Modos                            |
|-----------|---------------|-----------|----------------------------------|
| `:map`    | `:noremap`    | `:unmap`  | normal, visual, pendiente del operador |
| `:nmap`   | `:nnoremap`   | `:nunmap` | normal                           |
| `:xmap`   | `:xnoremap`   | `:xunmap` | visual                           |
| `:cmap`   | `:cnoremap`   | `:cunmap` | línea de comandos                     |
| `:omap`   | `:onoremap`   | `:ounmap` | pendiente del operador                 |
| `:imap`   | `:inoremap`   | `:iunmap` | insertar                           |

Por ejemplo, esto define el mapeo sólo para el modo normal:

```vim
:nmap <space> :echo "foo"<cr>
```

Desmapeo (Unmap) de nuevo utilizando `:nunmap <space>`.

Para ver otros modos (o combinaciones de ellos) poco comunes, consulte `:h map-modes`.

Hasta aquí, todo bien. Sólo hay un problema que puede resultar bastante confuso para los principiantes: ¡`:nmap` es _recursivo_! Es decir, el lado derecho tiene en cuenta otros mapeos.

Así que has definido un mapeo que simplemente se hace eco de "Foo":

```vim
:nmap b :echo "Foo"<cr>
```

¿Pero qué pasa si quieres asignar el comportamiento por defecto de `b` (ir una palabra hacia atrás) a otra tecla?

```vim
:nmap a b
```

Si se pulsa <kbd>a</kbd>, esperamos que el cursor retroceda una palabra, pero ¡en su lugar se imprime "Foo" en la línea de comandos! Porque el lado derecho, `b`, ya estaba mapeado a otra acción, concretamente `:echo "Foo"<cr>`.

La forma correcta de resolver este problema es utilizar un mapeo _no recursivo_ en su lugar:

```vim
:nnoremap a b
```

Regla de oro: Utilice siempre mapeos no recursivos a menos que se desee realmente recursar.

Busque sus mapeos no dando un lado derecho. Por ejemplo, `:nmap` muestra todos los mapeos normales y `:nmap <líder>` muestra todos los mapeos normales que comienzan con el líder.

Si quieres desactivar un mapeo normal, mapea con el carácter especial `<nop>`, por ejemplo `:noremap <left> <nop>`.

Comandos help:

    :h key-notation
    :h mapping
    :h 05.3

## Tecla líder

La tecla líder es simplemente un marcador de posición que puede usarse con mapeos personalizados y está configurado con `\` por defecto.

```vim
nnoremap <leader>h :helpgrep<space>
```

Este mapeo es activado por `\h`. Si desea utilizar `<space>h` en su lugar:

```vim
let mapleader = ' '
nnoremap <leader>h :helpgrep<space>
```

Además, existe `<localleader>` que es la contraparte local de `<leader>` y se supone que se utiliza para los mapeos que son locales al buffer, por ejemplo, los plugins-específicos-del-tipo-de-archivo. También va por defecto con `\`.

**Nota**: ¡Prepare los mapeadores antes de los mapeos! Todos los mapeos de líder que están en
ya están en efecto, no cambiarán sólo porque el mapleader fue cambiado. `:nmap
<leader>` mostrará todos los mapeos de líder en modo normal con el mapleader resuelto
así que utilícelo para comprobar sus mapeos.

Vease `:h mapleader` y `:h maplocalleader` para más información.

## Registradores

Los registros son ranuras que guardan texto. Copiar texto en un registro se denomina **arrancado** (**yanking**) y extraer texto de un registro se denomina **pegado** (**pasting**).

Vim proporciona los siguientes registros:

| Tipo                | Tecla             | ¿Llevado a cabo por? | ¿Sólo lectura? | ¿Contiene texto de? |
|---------------------|------------------------|------------|-----------|---------------------|
| Sin nombre             | `"`                    | vim        | [ ]       | Último arrancado o borrado. (`d`, `c`, `s`, `x`, `y`) |
| Numerado            | De `0` a `9`             | vim        | [ ]       | Registro `0`: Último arrancado. Registro `1`: Último borrado. Registro `2`: Segundo último borrado. Y así sucesivamente. Piensa en los registros `1`-`9` como una cola (https://es.wikipedia.org/wiki/Cola_(inform%C3%A1tica)) con 9 elementos. |
| Borrado pequeño       | `-`                    | vim        | [ ]       | Última eliminación de menos de una línea. |
| Llamado               | De `a` a `z`, y de `A` a `Z` | usuario       | [ ]       | Si tiras hacia el registro `a`, reemplazas su texto. Si se tira hacia el registro `A`, se añade al texto del registro `a`. |
| Sólo lectura          | `:`, `.`, `%`          | vim        | [x]       | `:`: Último comando, `.`: Último texto insertado, `%`: Nombre de archivo actual. |
| Búfer alterno    | `#`                    | vim        | [ ]       | La mayoría de las veces el buffer previamente visitado de la ventana actual. Ver `:h archivo-alternativo` |
| Expresión          | `=`                    | user       | [ ]       | Evaluación de la expresión de VimL que fue arrancado. Por ejemplo, haga esto en el modo de inserción: `<c-r>=5+5<cr>` y se insertará "10" en el buffer. |
| Selección           | `+`, `*`               | vim        | [ ]       | `*` y `+` son los registros del [portapapeles](#clipboard). |
| Drop                | `~`                    | vim        | [x]       | Desde el último drag'n'drop. |
| Agujero negro          | `_`                    | vim        | [ ]       | Si no quieres que ningún otro registro se vea afectado implícitamente. Por ejemplo, `"_dd` borra la línea actual sin afectar a los registros `"`, `1`, `+`, `*`. |
| Último patrón de búsqueda | `/`                    | vim        | [ ]       | Último patrón utilizado con `/`, `?`, `:global`, etc. |

Cada registro que no es de sólo lectura puede ser configurado por el usuario:

```vim
:let @/ = 'register'
```

Después, <kbd>n</kbd> saltaría a la siguiente ocurrencia de "registro".

Hay numerosas excepciones cuando los registros se llenan implícitamente, así que asegúrese
de leer `:h registros`.

Arrancar con `y` y pega con `p`/`P`, pero ten en cuenta que Vim distingue entre
selecciones visuales por caracteres y por líneas. Ver `:h linewise`.

**Ejemplo: línea de vida**

`yy` (o simplemente `Y`) arranca la línea actual, mueve el cursor a otro lugar, usa
`p` para pegar por debajo de la línea actual `P` para pegar por encima.

**Ejemplo: charwise**

Arranca la primera palabra con `0yw`, desplazate a otro lugar, pega después del cursor en
la línea actual con `p` y antes del cursor con `P`.

**Ejemplo: nombramiento explícito del registro**

`"aY` arroja la línea actual al registro `a`. Muevete a otra línea. "AY añade la línea actual al registro "a".

Te sugiero que juegues un poco con todos estos registros y que compruebes constantemente
`:reg`, para que puedas ver lo que realmente está sucediendo.

**Dato curioso**: En Emacs "yanking" significa pegar (o _reinsertar texto previamente
texto matado_), no copiar.

## Rangos

Los rangos son bastante fáciles de entender, pero muchos Vimmers no conocen su
todo su potencial.

- Muchos comandos toman rangos.
- Una dirección denota una línea determinada.
- Un rango es una sola dirección o un par de direcciones separadas por
  `,` o `;`.
- Los rangos indican a los comandos sobre qué líneas deben actuar.
- La mayoría de los comandos actúan por defecto sólo en la línea actual. Las excepciones notables son
  `:write` y `:global` que actúan sobre todas las líneas.

El uso de los rangos es bastante intuitivo, así que aquí hay algunos ejemplos (usando `:d`
como forma abreviada de `:delete`):

| Comandos | Líneas actuadas |
|---------|----------------|
| `:d` | Línea actual. |
| `:.d` | Línea actual. |
| `:1d` | Primera línea. |
| `:$d` | Última línea. |
| `:1,$d` | Todas las lineas. |
| `:%d` | Todas las líneas (azúcar sintáctico para `1,$`). |
| `:.,5d` | Línea actual a línea 5. |
| `:,5d` | También la línea actual a la línea 5. |
| `:,+3d` | Línea actual y las 3 líneas siguientes. |
| `:1,+3d` | De la primera línea a la línea actual + 3. |
| `:,-3d` | CLínea actual y las 3 últimas líneas. (Vim le preguntará, ya que se trata de un rango invertido). |
| `:3,'xdelete` | Líneas 3 a la línea marcada por el [marcador](#marks) x. |
| `:/^foo/,$delete` | Desde la siguiente línea que comienza con "foo" hasta el final. |
| `:/^foo/+1,$delete` | Desde la línea que sigue a la que empieza por "foo" hasta el final. |

Tenga en cuenta que en lugar de `,`, se puede utilizar `;` como separador. La diferencia es que
en el caso de `from,to`, el `to` es relativo a la línea actual, pero al usar `from;to`, ¡el `to` es relativo a la dirección de `from`! Suponiendo que esté en la línea 5, `:1,+1d` borraría las líneas 1 a 6, mientras que `:1;+1d` sólo
las líneas 1 y 2.

La dirección `/` puede ir precedida de otra dirección. Esto le permite _apilar_
patrones, por ejemplo

```vim
:/foo//bar//quux/d
```

Esto eliminaría la primera línea que contiene "quux" después de la primera línea
que contiene "bar" después de la primera línea que contiene "foo" después de la línea actual.

A veces, Vim antepone automáticamente a la línea de comandos un rango. Por ejemplo, inicie una
selección visual de líneas con `V`, seleccione algunas líneas y escriba `:`. La línea de comandos
se llenará con el rango `'<,'>`, lo que significa que el siguiente comando
utilizará las líneas previamente seleccionadas como rango. (Esta es también la razón por la que a veces
ver mapeos como `:vnoremap foo :<c-u>command`. Aquí `<c-u>` se utiliza para eliminar
el rango, porque Vim arrojará un error al dar un rango a un comando que
no lo soporta).

Otro ejemplo es el uso de "!!" en modo normal. Esto llenará la línea de
línea de comandos con `:.!`. Si es seguido por un programa externo, la salida de ese programa
reemplazará la línea actual. Así que podría reemplazar el párrafo actual
con la salida de ls usando `:?^$?+1,/^$/-1!ls`. ¡Genial!

Comandos help:

```
:h cmdline-ranges
:h 10.3
```

## Marcadores

Las marcas se utilizan para recordar una posición, es decir, el número de línea y la columna, en un archivo.

| Marcadores | Establecido por.. | Uso |
|-------|----------|-------|
| `a` - `z` | Usuario | Local al archivo, por lo que sólo es válido dentro de un archivo. Saltar a una marca minúscula, significa saltar dentro del archivo actual. |
| `A` - `Z` | Usuario | Globales, por lo tanto válidas entre archivos. También se denominan _marcas de archivo_. Al saltar a una marca de archivo se puede cambiar a otra memoria intermedia. |
| `0` - `9` | viminfo | `0` es la posición en la que se escribió el archivo viminfo por última vez. En la práctica esto significa cuando el último proceso de Vim terminó. `1` es la posición de cuando el penúltimo proceso de Vim terminó y así sucesivamente. |

Ponga `'`/`g'` o `` ``/` g` `` delante de una marca para formar un movimiento.

Utilice `mm` para recordar la posición actual con la marca "m". Muévete por el archivo
y luego salta hacia atrás a través de `'m` (la primera que no esté en blanco) o `` `m`` (la columna exacta).
Las marcas en minúsculas serán recordadas después de salir de Vim, si le dice a su archivo viminfo
que lo haga, vea `:h viminfo-'`.

Utilice `mM` para recordar la posición actual con la marca de archivo "M". Cambie a otro
buffer y vuelva a cambiar mediante `'M` o `` `M``.

Otros movimientos son:

| Movimiento           | Ir a.. |
|------------------|-----------|
| `'[`, `` `[ ``   | Primera línea o carácter de un texto previamente modificado o arrancado. |
| `']`, `` `] ``   | Última línea o carácter de un texto previamente modificado o arrancado. |
| `'<`, `` `< ``   | Línea o carácter inicial de la última selección visual. |
| `'>`, `` `> ``   | Línea o carácter final de la última selección visual. |
| `''`, ``` `` ``` | Posición antes del último salto. |
| `'"`, `` `" ``   | Posición al salir por última vez del buffer actual. |
| `'^`, `` `^ ``   | Posición donde se detuvo la última inserción. |
| `'.`, `` `. ``   | Posición en la que se realizó el último cambio. |
| `'(`, `` `( ``   | Inicio de la frase actual. |
| `')`, `` `) ``   | Fin de la frase actual. |
| `'{`, `` `{ ``   | Inicio del párrafo actual. |
| `'}`, `` `} ``   | Fin del párrafo actual. |

Las marcas también pueden utilizarse en un [rango](#rangos). Probablemente haya visto esto antes y
se ha preguntado qué significa: Seleccione algún texto en modo visual y haga `:`, la
línea de comandos será precedida por `:'<,'>`, lo que significa que el siguiente comando
obtendría un rango que denota la selección visual.

Utilice `:marks` para listar todas las marcas. Lee todo en `:h mark-motions`.

## Completadores

Vim proporciona muchos tipos de terminaciones en modo de inserción. Si hay varias
coincidencias, un menú emergente le permitirá navegar hasta la coincidencia de su elección.

Los tipos típicos de compleción son etiquetas, funciones de módulos importados o
bibliotecas, nombres de archivos, diccionario o simplemente palabras del búfer actual.

Vim proporciona un mapeo para cada tipo de compleción y todos ellos comienzan con
`<c-x>` (recuerde usarlos en modo de inserción):

| Mapeo | Tipo | Ayuda        |
|---------|------|--------------|
| `<c-x><c-l>` | líneas enteras | `:h i^x^l` |
| `<c-x><c-n>` | palabras clave del archivo actual | `:h i^x^n` |
| `<c-x><c-k>` | palabras clave de la opción `'diccionario'` | `:h i^x^k` |
| `<c-x><c-t>` | palabras clave de la opción `tesauro`. | `:h i^x^t` |
| `<c-x><c-i>` | palabras clave de los archivos actuales e incluidos | `:h i^x^i` |
| `<c-x><c-]>` | etiquetas | `:h i^x^]` |
| `<c-x><c-f>` | nombres de archivos | `:h i^x^f` |
| `<c-x><c-d>` | definiciones o macros | `:h i^x^d` |
| `<c-x><c-v>` | Comandos Vim | `:h i^x^v` |
| `<c-x><c-u>` | definido por el usuario (como se especifica en `'completefunc'`) | `:h i^x^u` |
| `<c-x><c-o>` | completador omni (como se especifica en `'omnifunc'`) | `:h i^x^o` |
| `<c-x>s`     | sugerencias ortográficas | `:h i^Xs` |

La gente puede confundir la diferencia entre la completación definida por el usuario
y la completación omnicanal, pero técnicamente hacen lo mismo. Toman una función
que inspecciona la posición actual y devuelve una lista de sugerencias.
La completación definida por el usuario es definida por el usuario para sus propios propósitos personales.
(¡Sorpresa!) Puede ser cualquier cosa. La completación de Omni está pensado para propósitos específicos del tipo de archivo
específicos del tipo de archivo, como completar los miembros de la estructura o los métodos de la clase, y a menudo se establece por
plugins de tipo de archivo.

Vim también permite completar varios tipos a la vez configurando la opción `'complete'`. Por defecto esa opción incluye bastante, así que asegúrese de recortarla a su gusto. Puede activar esta finalización utilizando `<c-n>` (siguiente) y `<c-p>` (anterior), que también son las teclas utilizadas para elegir entradas en el menú emergente. Vea `:h i^n` y `:h 'complete'` para más información.

Asegúrese de revisar `:h 'completeopt'` para configurar el comportamiento del menú emergente. El valor por defecto es bastante sano, pero yo prefiero añadir también "noselect".

Comandos help:

```
:h ins-completion
:h popupmenu-keys
:h new-omni-completion
```

## Movimientos, operadores, objetos de texto

**Los movimientos** mueven el cursor. Todos conocen "h", "j", "k", "l". O "w" y "b". Incluso
`/` es un movimiento. También llevan una cuenta. `2?el<cr>` salta a la penúltima
ocurrencia de "el".

Vea `:h navegación` y todo lo que hay debajo para todos los movimientos disponibles.

**Los operadores** actúan sobre una región del texto, por ejemplo, `d`, `~`, `gU`, `>` por nombrar sólo algunos. . Se utilizan en dos contextos, en modo normal o visual. En el modo normal, los operadores van primero seguidos de un movimiento, por ejemplo `>j`. En el modo visual los operadores simplemente actúan sobre la selección, por ejemplo `Vjd`.

Al igual que los movimientos, los operadores toman una cuenta, por ejemplo, `2gUw` hace que el resto de la palabra actual y la siguiente sean mayúsculas. Como los movimientos y los operadores toman cuentas, `2gU2w` funciona igual de bien y ejecuta `gU2w` dos veces.

Vea `:h operador` para todos los operadores disponibles. Utilice `:set tildeop` para hacer que `~` actúe como un operador.

**Los objetos de texto** actúan sobre el área circundante, a diferencia de los movimientos que actúan en una sola dirección. En realidad funcionan sobre objetos, por ejemplo, una palabra entera, una frase entera, todo lo que hay entre paréntesis, etc.

Los objetos de texto no pueden usarse para mover el cursor en modo normal, porque incluso los cursores más hábiles no pueden saltar en dos direcciones al mismo tiempo. Sin embargo, funciona en el modo visual, porque entonces un lado del objeto ya está seleccionado y el cursor simplemente salta al otro lado.

Los objetos de texto comienzan con `i` (piense en _inner_, el cual es inglés para _adentro_) o `a` (piense en _around_, el cual es inglés para _alrededor_) seguido de un carácter que denota el objeto. Con `i` sólo actúa sobre el objeto en sí, con `a` sobre el objeto más el espacio en blanco final. Por ejemplo, `diw` borra la palabra actual y `ci(` cambia todo lo que está entre paréntesis.

Los objetos de texto toman una cuenta. Imagine `((( )))` y el cursor sobre o entre los paréntesis más interiores, entonces `d2a(` eliminará los 2 pares de paréntesis interiores y todo lo que haya entre ellos.

Vea `:h objetos-texto` para todos los objetos de texto disponibles.

## Autocmds

Puedes activar una acción después de muchos eventos en Vim, como que se guarde un buffer o que Vim se inicie, mediante los llamados _autocmds_.

Vim depende en gran medida de los autocmds. ¿No me crees? Comprueba `:au`, pero no dejes que la salida te abrume. Estos son todos los autocmds que están en efecto ahora mismo.

Vea `:h {event}` para una rápida visión general de todos los eventos disponibles y `:h autocmd-events-abc` para más detalles.

Un ejemplo típico sería la configuración específica del tipo de archivo:

```vim
" 'Filetype' significa 'tipo de archivos'
autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 comments-=:#
```

Pero, ¿cómo sabe un búfer que contiene código Ruby? Porque otro autocmd lo detecta como tal y establece el tipo de archivo en consecuencia, lo que de nuevo desencadena el evento `FileType`.

Una de las primeras cosas que todo el mundo añade a su vimrc es `filetype on`. Esto simplemente significa que `filetype.vim` se lee al inicio, lo que establece autocmds para casi todos los tipos de archivo bajo el sol.

Si eres lo suficientemente valiente, échale un vistazo a: `:e $VIMRUNTIME/filetype.vim`. Busca "Ruby" y verás que Vim simplemente utiliza la extensión de archivo `.rb` para para detectar los archivos Ruby:

**NOTA**: Los autocomandos del mismo evento se ejecutan en el orden en que fueron creados. `:au` los muestra en el orden correcto.

```vim
au BufNewFile,BufRead *.rb,*.rbw  setf ruby
```

Los eventos `BufNewFile` y `BufRead` en este caso están codificados en las fuentes C de Vim y se emiten cada vez que se abre un archivo a través de `:e` y comandos similares. Después se comprueban todos los cientos de tipos de archivo de `filetype.vim`. se comprueban.

En pocas palabras, Vim hace un uso intensivo de eventos y autocomandos, pero también expone una interfaz limpia para engancharse a ese sistema basado en eventos para personalización.

Comando help: `:h autocommand`

## Lista de cambios, lista de salto

Las posiciones de los últimos 100 cambios se guardan en la **lista de cambios** (changelist). Varios cambios pequeños en la misma línea se fusionarán, pero la posición será la del último cambio (en caso de que hayas añadido algo en medio de la línea).

Cada vez que se salta, la posición _antes_ del salto se recuerda en la **lista de salto** (jumplist). Una lista de salto tiene hasta 100 entradas. Cada ventana tiene su propia lista de saltos. Cuando se divide una ventana, la lista de saltos se copia.

Un salto es uno de los siguientes comandos: `'`, `` ``, `G`, `/`, `?`, `n`, `N`, `%`, `(`, `)`, `[[`, `]]`, `{`, `}`, `:s`, `:tag`, `L`, `M`, `H` y comandos que inician la edición de un nuevo archivo.

| Lista       | Lista todas las entradas | Ir a la posición más antigua | Ir a la posición más nueva |
|------------|------------------|----------------------|----------------------|
| lista de salto (jumplist)   | `:jumps`         | `[count]<c-o>`       | `[count]<c-i>`       |
| lista de cambio (changelist) | `:changes`       | `[count]g;`          | `[count]g,`          |

Cuando enumeres todas las entradas, un marcador `>` se utiliza para mostrar la posición actual. Normalmente este estará debajo de la posición 1, la más reciente.

Si quiere que ambas listas persistan después de reiniciar Vim, necesitaras usar el archivo archivo viminfo y `:h viminfo-'`.

**NOTA**: La posición anterior al último salto también se guarda como un [marcador](#marcadores)
y se puede saltar a ella mediante ``` `` ``` o `''`.

Comandos help:

```
:h changelist
:h jumplist
```

## Árbol de deshacer

Los últimos cambios al estado del texto son recordados. Puede utilizar _undo_ para revertir los cambios y _redo_ para volver a aplicar los cambios revertidos anteriormente. 

Lo importante es entender que la estructura de datos que contiene los cambios recientes no es una [cola](https://es.wikipedia.org/wiki/Cola_(inform%C3%A1tica)) sino un [árbol](https://es.wikipedia.org/wiki/%C3%81rbol_(inform%C3%A1tica)). Sus cambios son nodos en el árbol y cada uno (excepto el nodo superior) tiene un nodo padre. Cada nodo guarda información sobre el texto modificado y el tiempo. Una rama es una serie de nodos que parte de cualquier nodo y llega hasta el nodo superior. Se crean nuevas ramas cuando cuando se deshace un cambio y se inserta algo más.

```
ifoo<esc>
obar<esc>
obaz<esc>
u
oquux<esc>
```

Ahora tienes 3 líneas y el árbol de deshacer se ve así:

```
     foo(1)
       /
    bar(2)
   /      \
baz(3)   quux(4)
```

El árbol de deshacer tiene 4 cambios. Los números representan la _hora_ en que se crearon los nodos.

Ahora hay dos formas de recorrer este árbol, llamémoslas _branch-wise_ y y _time-wise_.

Deshacer (`u`) y rehacer (`<c-r>`) funcionan por ramas. Suben y bajan por la rama actual. La tecla `u` revertirá el estado del texto al del nodo "bar". Otra `u` revertirá el estado del texto aún más, al del nodo "foo". Ahora `<c-r>` vuelve al estado del nodo "bar" y otro `<c-r>` al estado del nodo "quux". (Ya no hay forma de llegar al nodo "baz" usando comandos de bifurcación).

Por el contrario, `g-` y `g+` funcionan en función del tiempo. Así, `g-` no revertirá al estado del nodo "bar", como hace `u`, sino al estado cronológicamente anterior, el nodo "baz". Otra `g-` revertiría el estado al del nodo "bar" y así y así sucesivamente. Así, `g-` y `g+` simplemente retroceden y avanzan en el tiempo, respectivamente.

| Comando / Mapeo | Acción |
|-------------------|--------|
| `[count]u`, `:undo [count]` | Deshacer cambios en [count]. |
| `[count]<c-r>`, `:redo` | Rehacer cambios en [count]. |
| `U` | Deshacer todos los cambios hasta la línea del último cambio. |
| `[count]g-`, `:earlier [count]?` | Ir al estado de texto más antiguo [count] veces. Los "?" pueden ser "s", "m", "h", "d" o "f". Por ejemplo, `:earlier 2d` va al estado del texto de hace 2 días. `:earlier 1f` irá al estado del último archivo guardado. |
| `[count]g+`, `:later [count]?` | Lo mismo que lo anterior, pero en la otra dirección. |

El árbol de deshacer se mantiene en memoria y se perderá cuando Vim se cierre. Vea [Deshacer archivos](#undo-files) para saber cómo habilitar el deshacer persistente.

Si estás confundido con el árbol de deshacer, el proyecto [undotree](https://github.com/mbbill/undotree) hace un excelente trabajo vizualizando este tipo árbol. Sin embargo, cabo destacar que el proyecto se encuentra en inglés.

Comandos help:

```
:h undo.txt
:h usr_32
```

## Quickfix y lista de ubicaciones

La lista quickfix es una estructura de datos que contiene posiciones de archivos. Esencialmente, cada entrada en la lista quickfix consiste en una ruta de archivo, un número de línea y una columna opcional, y una descripción.

Los casos típicos de uso son el montaje de errores del compilador o los resultados de una herramienta grep.

Vim tiene un tipo especial de buffer para mostrar la lista de quickfix: el buffer de quickfix. Cada línea en el buffer de quickfix muestra una entrada de la lista de quickfix.

Normalmente se abre una nueva ventana para mostrar la lista de quickfix: la ventana de quickfix. Cuando esto ocurre, la última ventana se asocia con la ventana de quickfix.

En el buffer de quickfix `<cr>` abre la entrada seleccionada en la ventana asociada y `<c-w><cr>` en una nueva ventana.

La lista quickfix fue nombrada por la función "quick fix" del compilador [Aztec C](https://en.wikipedia.org/wiki/Aztec_C) (Link en inglés).

En realidad, hay dos tipos de listas: las listas rápidas y las de localización. Se comportan casi igual, pero tienen las siguientes diferencias:

- Sólo hay una lista de fijación rápida. Puede haber varias listas de localización; una por ventana.
- Utilizan comandos ligeramente diferentes para la navegación.

| Acción        | Quickfix     | Localización     |
|----------------|--------------|--------------|
| abrir ventana   | `:copen`     | `:lopen`     |
| cerrar ventana   | `:cclose`    | `:lclose`    |
| siguiente entrada     | `:cnext`     | `:lnext`     |
| entrada anterior | `:cprevious` | `:lprevious` |
| primera entrada   | `:cfirst`    | `:lfirst`    |
| última entrada     | `:clast`     | `:llast`     |

Tenga en cuenta que las ventanas de quickfix y de localización no necesitan estar abiertas para que estos comandos funcionen.

Consulte `:h quickfix` para obtener más información y una lista completa de comandos.

Para ser más concisos, _quickfix_ y _location_ suelen abreviarse como _qf_ y _loc_ respectivamente.

**Ejemplo**:

Usemos nuestro viejo amigo `grep` para buscar en los archivos del directorio actual directorio actual de forma recursiva para una determinada consulta y poner los resultados en la lista en la lista de quickfix.

```vim
:let &grepprg = 'grep -Rn $* .'
:grep! foo
<grep output - hit enter>
:copen
```

Suponiendo que algún archivo contenga la cadena "foo", debería mostrarse ahora en la ventana de quickfix.

## Macros

Vim permite grabar los caracteres tecleados en un [registro](#registradores). Es una buena manera de automatizar ciertas tareas sobre la marcha. (Para tareas más elaboradas, se debe utilizar Vim scripting en su lugar).

- Inicie la grabación escribiendo `q` seguido del registro, por ejemplo `q`. (La línea de comandos lo indicará mediante "grabación @q").
- Detenga la grabación pulsando de nuevo `q`.
- Ejecute la macro mediante `[count]@q`.
- Repite la última macro utilizada mediante `[count]@@`.

**Ejemplo 1:**

Inserta una línea y repítela 10 veces:

```
qq
iabc<cr><esc>
q
10@q
```

(Lo mismo podría hacerse sin macros: `oabc<esc>10.`)

**Ejemplo 2:**

Para añadir números de línea delante de todas las líneas, comience en la primera línea y añada manualmente "1.". Incremente el número bajo el cursor usando `<c-a>`, que se muestra como `^A`.

```
qq
0yf jP0^A
q
1000@q
```

Aquí simplemente esperamos que el archivo no contenga más de 1000 líneas al utilizar `1000@q`, pero también podemos utilizar una macro recursiva, que se ejecute hasta que la macro no pueda aplicarse a una línea más:

```
qq
0yf jP0^A@q
q
@q
```

(Lo mismo podría hacerse sin macros: `:%s/^/\=line('.') . '. '`)

Ten en cuenta que también muestro cómo lograr lo mismo sin usar macros, pero esto funciona principalmente sólo para estos ejemplos simples. Para una automatización más compleja, ¡las macros son la bomba!

Vea también: [Edite rápidamente sus macros](#quickly-edit-your-macros)

Comandos help:

```
:h recording
:h 'lazyredraw'
```

## Esquema de colores

Los esquemas de color son la forma de dar estilo a su Vim. Vim consta de muchos componentes y cada uno de ellos puede personalizarse con diferentes colores para el primer plano, el fondo y algunos otros atributos como el texto en negrita, etc. Se pueden configurar así:

```vim
:highlight Normal ctermbg=1 guibg=red
```

Esto pintaría el fondo del editor de color rojo. Ver `:h :highlight` para más información.

Así, los esquemas de colores son en su mayoría colecciones de comandos `:highlight`.

En realidad, la mayoría de los esquemas de colores son realmente 2 esquemas de colores. El ejemplo anterior establece los colores mediante `ctermbg` y `guibg`. La primera definición (`cterm*`) sólo se utilizará si Vim se inicia en un emulador de terminal, por ejemplo, xterm. La segunda (`gui*`) se utilizará en entornos gráficos como gvim o MacVim.

Si alguna vez usas un esquema de colores en Vim terminal y los colores no se parecen en absoluto a los de la captura de pantalla, lo más probable es que el esquema de colores sólo defina los colores para la GUI. Por el contrario, si usas un Vim gráfico (por ejemplo, gvim o MacVim) y los colores no se parecen, es posible que el esquema de colores sólo defina los colores para el terminal.

Este último caso puede ser "resuelto" habilitando los colores verdaderos en Neovim o Vim 7.4.1830 y más recientes. Esto hace que el terminal Vim utilice las definiciones de la GUI en su lugar, pero también requiere que el propio emulador de terminal y todo el software intermedio (por ejemplo, tmux) sea capaz de manejar los colores verdaderos. (Este [gist](https://gist.github.com/XVilka/8346728) da una buena visión general sobre el tema).

Comando help & cosas de interés:

- `:h 'termguicolors'`
- [Lista de esquema de colores](PLUGINS.md#colorschemes-1)
- [Cambios cosméticos en los esquemas de color](#cosmetic-changes-to-colorschemes)

## Plegados

Todo texto (o código fuente) tiene una estructura determinada. Si tiene una estructura, significa que tiene regiones de texto lógicamente separadas. El plegado permite "plegar" una región de este tipo en una sola línea y mostrar una breve descripción. Hay muchos comandos que actúan sobre estas regiones llamadas _folds_. Los pliegues pueden ser anidados.

Vim distingue entre varios tipos de métodos de plegado:

| 'foldmethod' | Uso |
|--------------|-------|
| diff         | Se utiliza en las ventanas diff para doblar el texto sin modificar. |
| expr         | Utiliza `'foldexpr'` para crear básicamente un nuevo método de plegado. |
| indent       | Pliegues basados en la sangría. |
| manual       | Cree usted mismo los pliegues mediante `zf`, `zF` y `:fold`. |
| marker       | Pliegues basados en marcadores en el texto (a menudo en los comentarios). |
| syntax       | Pliegues basados en la sintaxis, por ejemplo, plegando bloques "si". |

**NOTA**: El plegado puede ser intensivo desde el punto de vista computacional. Si experimenta algún inconveniente de rendimiento (pequeños retrasos al escribir), eche un vistazo a [FastFold](https://github.com/Konfekt/FastFold) (link en inglés), que evita que Vim actualizar los pliegues cuando no es necesario.

Comando help:

```
:h usr_28
:h folds
```

## Sesiones

Si guardas una **vista** (`:h :mkview`), el estado actual de la ventana (y opciones y mapeos) se guarda para su uso posterior (`:h :loadview`).

Una **sesión** guarda las vistas de todas las ventanas más la configuración global. Básicamente hace una instantánea de su instancia actual de Vim y la guarda en un archivo de sesión. Permíteme subrayar esto: guarda el estado actual; todo lo que se haga después de guardar una sesión no será parte del archivo de sesión. Para "actualizar" una sesión, simplemente escríbala de nuevo.

Esto hace que sea perfecto para guardar tus proyectos y que sea fácil cambiar entre ellos.

¡Pruébalo ahora mismo! Abre algunas ventanas y pestañas y haz `:mksession Foo.vim`. Si omites el nombre del archivo, se asumirá `Session.vim`. El archivo se guardará en el directorio de trabajo actual, compruebe `:pwd`. Reinicie Vim y haga `:source Foo.vim` y voilà, la lista de búferes, la disposición de las ventanas, las asignaciones, el directorio de trabajo, etc. deberían ser los mismos que antes de guardar la sesión. ¡Trabaja un poco más y actualiza la sesión sobrescribiendo el archivo de sesión ya existente con `:mksession! Foo.vim`.

Ten en cuenta que un archivo de sesión es en realidad una colección de comandos de Vim que se supone que restablecen un determinado estado de una instancia de Vim, así que no dudes en echarle un vistazo: `:vs Foo.vim`.

Puedes decirle a Vim qué cosas debe guardar en una sesión estableciendo `'sessionoptions''.

Para propósitos de scripting, Vim mantiene el nombre de la última sesión escrita o generada en la variable interna `v:this_session`.

Comando help:

```
:h Session
:h 'sessionoptions'
:h v:this_session
```

## Localidad

Muchos de los conceptos mencionados anteriormente también tienen contrapartidas _locales_:

| Global | Local | Alcance | Ayuda |
|--------|-------|-------|------|
| `:set`     | `:setlocal`           | búfer o ventana | `:h local-options`    |
| `:map`     | `:map <buffer>`       | búfer           | `:h :map-local`       |
| `:autocmd` | `:autocmd * <buffer>` | búfer           | `:h autocmd-buflocal` |
| `:cd`      | `:lcd`                | ventana          | `:h :lcd`             |
| `<leader>` | `<localleader>`       | búfer           | `:h maplocalleader`   |

[Las variables también tienen diferentes alcances](https://vimhelp.appspot.com/usr_41.txt.html#41.2) (link en inglés).

# Utilización

## Conseguir ayuda offline

Vim viene con una gran documentación en forma de archivos de texto individuales con un diseño especial. Vim utiliza un sistema basado en etiquetas para acceder a ciertas partes de esos archivos de ayuda.

En primer lugar, lee esto: `:help :help`. Esto abrirá el archivo `$VIMRUNTIME/doc/helphelp.txt` en una nueva ventana y saltará a la etiqueta `:help` dentro de ese archivo.

Unas cuantas reglas sencillas:

- las opciones van entre comillas simples, por ejemplo `:h 'textwidth'`.
- Las funciones de VimL terminan en `()`, p. ej. `:h reverse()`.
- los comandos comienzan con `:`, por ejemplo `:h :echo`.

Puede utilizar `<c-d>` (esto es <kbd>ctrl</kbd>+<kbd>d</kbd>) para listar todas las etiquetas que coincidan con la consulta introducida actualmente. Por ejemplo, `:h tab<c-d>` obtendrá una lista de todas las etiquetas desde `tab` sobre `'softtabstop'` hasta `setting-guitablabel`.

¿Quieres listar todas las funciones de VimL? Simple: `:h ()<c-d>`. ¿Quieres listar todas las funciones de VimL que tienen que ver con las ventanas? `:h win*()<c-d>`.

Esto se convierte rápidamente en una segunda naturaleza, pero especialmente al principio, a veces no se sabe ninguna parte de la etiqueta que se busca. Sólo puedes imaginar algunas palabras clave que pueden estar involucradas. ¡`:helpgrep` al rescate!

```
:helpgrep backwards
```

Esto buscará "hacia atrás" en todos los archivos de documentación y saltará a la primera coincidencia. Las coincidencias se reunirán en la lista de correcciones rápidas. Utilice `:cn`/`:cp` para saltar a la siguiente/anterior coincidencia. O utilice `:copen` para abrir la ventana de quickfix, navegue hasta una entrada y pulse `<cr>` para saltar a esa coincidencia. Vea `:h quickfix` para conocer toda la verdad.

## Conseguir ayuda offline (alternativo)

Esta lista fue compilada por @chrisbra, uno de los desarrolladores de Vim más activos, y publicada en [vim_dev](https://groups.google.com/forum/#!forum/vim_dev) (link en inglés).

Se repostea aquí con pequeños cambios.

---

Si sabes lo que buscas, suele ser más fácil buscarlo utilizando el sistema de ayuda, porque los temas siguen una determinada guía de estilo.

Además, la ayuda tiene la ventaja de pertenecer a tu versión particular de Vim, por lo que no aparecerán temas obsoletos o añadidos posteriormente.

Por lo tanto, es esencial aprender el sistema de ayuda y el lenguaje que utiliza. Aquí hay algunos ejemplos (no necesariamente completos y puede que me haya olvidado de algo).

1. Las opciones van entre comillas simples. Por lo tanto, usted utilizaría `:h 'list'` para ir al tema de ayuda de la opción list. Si sólo sabe que está buscando una determinada opción, también puede hacer `:h options.txt` para abrir la página de ayuda que describe el manejo de todas las opciones y entonces puede buscar usando expresiones regulares, por ejemplo `/width`. Algunas opciones tienen su propio espacio de nombres, por ejemplo `:h cpo-a`, `:h cpo-A`, `:h cpo-b`, etc.

2. Los comandos en modo normal son sólo eso. Utilice `:h gt` para ir a la página de ayuda del comando "gt".

3. Los elementos de regexp siempre empiezan por "/", así que `:h /\+` te lleva al elemento de ayuda para el cuantificador ``\+`` en las regexes de Vim. Si necesitas saber algo sobre expresiones regulares, empieza a leer en `:h pattern.txt`.

4. Combinaciones de teclas. Suelen empezar con una sola letra que indica el modo para el que se pueden utilizar. Por ejemplo, `:h i_CTRL-X` te lleva a la familia de comandos CTRL-X para el modo de inserción que se puede utilizar para autocompletar diferentes cosas. Tenga en cuenta que ciertas teclas siempre se escribirán igual, por ejemplo, Control siempre será CTRL. Tenga en cuenta que para los comandos del modo normal, la "n" se deja de lado, por ejemplo `:h CTRL-A`. Por el contrario, `:h c_CTRL-R` describirá lo que hace CTRL-R cuando se introducen comandos en la línea de comandos y `:h v_Ctrl-A` habla sobre el incremento de números en modo visual y `:h g_CTRL-A` habla sobre el comando g (por lo que hay que pulsar "g" entonces). Aquí la "g" representa el comando normal "g" que siempre espera una segunda tecla antes de hacer algo similar a los comandos que comienzan con "z".

5. Los registros siempre empiezan por "quote", así que utiliza `:h quote` para conocer el registro especial ":".

6. El script de Vim (VimL) está disponible en `:h eval.txt`. Ciertos aspectos del lenguaje están disponibles en `:h expr-X` donde 'X' es una sola letra, por ejemplo, `:h expr-!` te llevará al tema que describe el operador '!' (Not) para VimL. También es importante ver `:h function-list` para encontrar una breve descripción de todas las funciones disponibles.

7. En la página de ayuda `:h map.txt` se habla de los mapeos. Utilice `:h mapmode-i` para conocer el comando `:imap`. Utilice también `:map-topic` para conocer ciertos subtemas particulares de los mapeos (por ejemplo, `:h :map-local` para mapeos de búferes locales o `:h map_bar` para saber cómo se maneja el '|' en los mapeos.

8. Las definiciones de los comandos se comentan en `:h command*`, así que utiliza `:h command-bar` para conocer el argumento '!' de los comandos personalizados.

9.  Los comandos de manejo de ventanas siempre comienzan con CTRL-W, por lo que encontrará la ayuda correspondiente en `:h CTRL-W_*` (por ejemplo, `:h CTRL-W_p` para cambiar a la ventana previamente accedida). También puede acceder a `:h windows.txt` y leer su camino, si está buscando un comando de manejo de ventanas.

10. Los comandos Ex siempre empiezan por ":", por lo que `:h :s` cubre el comando ":s".

11. Utilice CTRL-D después de escribir un tema y deje que Vim intente completar todos los temas disponibles.

12. Utilice `:helpgrep` para buscar en todas las páginas de ayuda (normalmente también incluye las páginas de ayuda de los plugins instalados). Vea `:h :helpgrep` para saber cómo usarlo. Una vez que haya buscado un tema, todas las coincidencias están disponibles en la ventana de quickfix (o localización) que puede abrirse con `:copen` o `:lopen`. Allí también puede utilizar `/` para filtrar aún más las coincidencias.

13. `:h helphelp` contiene información sobre cómo utilizar el comando `help`.

14. El manual de usuario. Describe los temas de ayuda para los principiantes de una forma bastante amigable. Empieza en `:h usr_toc.txt` para encontrar la tabla de contenidos (como habrás adivinado). Hojee esa ayuda para encontrar ciertos temas, .por ejemplo encontrará una entrada "Digraphs" y "Entering special characters" en el capítulo 24 (así que use `:h usr_24.txt` para ir a esa página de ayuda en particular).

15. Los grupos de resaltado siempre empiezan por `hl-*`. Por ejemplo, `:h hl-WarningMsg` se refiere al grupo de resaltado "WarningMsg".

16. El resaltado de la sintaxis tiene como nombre ":syn-topic", por ejemplo, `:h :syn-conceal` habla del argumento conceal para el comando `:syn`.

17. Los comandos de Quickfix suelen empezar por ":c", mientras que los de la lista de ubicaciones suelen empezar por ":l".

18. `:h BufWinLeave` habla del autocmd BufWinLeave. Además, `:h autocommands-events` habla de todos los posibles eventos.

19. Los argumentos de inicio siempre comienzan con "-", por lo que `:h -f` le lleva a la ayuda del interruptor de comando "-f" de Vim.

20. Las funciones extra compiladas siempre comienzan con "+", por lo que `:h +conceal` habla del soporte de ocultación.

21. Los códigos de error pueden consultarse directamente en la ayuda. `:h E297` te lleva exactamente a la descripción del mensaje de error. Sin embargo, a veces esos códigos de error no se describen, sino que se enumeran en el comando de Vim que suele causarlo. Por ejemplo, `:hE128` te lleva directamente al comando `:function`.

22. La documentación de los archivos de sintaxis incluidos suele estar disponible en `:h ft-*-syntax`. Por ejemplo, `:h ft-c-syntax` habla sobre el archivo de sintaxis C y las opciones que proporciona. A veces, hay secciones adicionales para la finalización omni (`:h ft-php-omni`) o plugins de tipo de archivo (`:h ft-tex-plugin`).

Además, en la parte superior de las páginas de ayuda se mencionará un enlace a la documentación del usuario (que describe ciertos comandos más desde la perspectiva del usuario y de forma menos detallada) si está disponible. Así, `:h pattern.txt` menciona los temas de la guía del usuario `:h 03.9` y `:h usr_27`.

## Conseguir ayuda online

Si tienes un problema que no puedes resolver o necesitas orientación general, consulta la lista de correo [vim_use](https://groups.google.com/forum/#!forum/vim_use). Otro gran recurso es utilizar el [IRC](https://de.wikipedia.org/wiki/Internet_Relay_Chat). El canal #vim en [Freenode](https://freenode.net) es enorme y suele estar lleno de gente que ayuda.

Si quieres informar de un error en Vim, utiliza la lista de correo [vim_dev](https://groups.google.com/forum/#!forum/vim_dev).

## Autocmds en la practica

Puedes activar cualquier evento en cualquier momento usando: `:doautocmd BufRead`.

### Eventos del usuario

Especialmente para los plugins es útil crear sus propios eventos de "User":

```vim
function! Chibby()
  " Muchas cosas pasan por aquí...
  " Y al final...
  doautocmd User ChibbyExit
endfunction
```

Ahora los usuarios de su plugin pueden ejecutar cualquier cosa cuando Chibby() termine de ejecutarse:

```vim
autocmd User ChibbyExit call ChibbyCleanup()
```

Por cierto, si no hay "captura" de `:autocmd`, `:doautocmd` mostrará el molesto mensaje "No hay autocomandos que coincidan". Por eso muchos plugins utilizan `silent doautocmd ...` en su lugar. Pero esto tiene la desventaja de que no puedes usar simplemente `echo "foo"` en el `:autocmd`, tienes que usar `unsilent echo "foo"` en su lugar...

Por eso es mejor comprobar si existe un autocmd receptor y no molestarse en emitir el evento en caso contrario:

```vim
if exists('#User#ChibbyExit')
  doautocmd User ChibbyExit
endif
```

Comando help: `:h User`

### Autocmds anidados

Por defecto, los autocmds no se anidan. Si un autocmd ejecuta un comando, que a su vez suele desencadenar otro evento, no lo hará.

Digamos que cada vez que inicias Vim, quieres abrir automáticamente tu vimrc:

```vim
autocmd VimEnter * edit $MYVIMRC
```

Cuando inicies Vim, abrirá tu vimrc, pero lo primero que notarás es que no habrá ningún resaltado, aunque normalmente lo habría.

El problema es que `:edit` en tu autocmd no anidado no dispara el evento "BufRead", por lo que el filetype nunca se establece en "vim" y `$VIMRUNTIME/syntax/vim.vim` nunca se origina. Ver `:au BufRead *.vim`. Utilice esto en su lugar:

```vim
autocmd VimEnter * nested edit $MYVIMRC
```

Comando help: `:h autocmd-nested`

## Portapapeles

[Funciones](#¿qué-tipo-de-vim-estoy-utilizando) de Vim requeridas: `+clipboard` y opcionalmente `+xterm_clipboard` si quieres usar la opción `'clipboard'` en un sistema Unix con un Vim que no tiene soporte de GUI.

Comandos help:

```
:h 'clipboard'
:h gui-clipboard
:h gui-selections
```

Vea también: [Pegar entre corchetes (¿o por qué tengo que poner "paste" todo el tiempo?) ](#bracketed-paste-or-why-do-i-have-to-set-paste-all-the-time)

### Uso de portapapeles (Windows, macOS)

Windows cuenta con un portapapeles llamado [clipboard](https://msdn.microsoft.com/en-us/library/windows/desktop/ms649012(v=vs.85).aspx), mientras que macOS cuenta con uno similar llamado [pasteboard](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/PasteboardGuide106/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008100-SW1).

Ambos funcionan como la mayoría de los usuarios esperan que lo hagan. Copias el texto seleccionado con `ctrl+c`/`cmd+c` y lo pegas en otra aplicación con `ctrl+v`/`cmd+v`.

Ten en cuenta que el texto copiado se transfiere realmente al portapapeles, por lo que puedes cerrar la aplicación de la que has copiado antes de pegar en otra aplicación sin problemas.

Cuando esto ocurre, el registro del portapapeles `*` se llena con la selección. Desde Vim utiliza `"*y` y `"*p` para arrancar y pegar desde el portapapeles respectivamente.

Si no quieres especificar el registro `*` todo el tiempo, pon esto en tu vimrc:


```vim
set clipboard=unnamed
```

Normalmente todas las operaciones de jalar/borrar/poner llenan el registro `"`, ahora el registro `*` se utiliza para las mismas operaciones, por lo que simplemente `y` y `p` serán suficientes.

Permíteme repetirlo: Usar la opción anterior significa que cada yank/paste, incluso cuando sólo se usa en la misma ventana de Vim, alterará el portapapeles. Decida usted mismo si esto es útil o no.

Si incluso te da pereza teclear `y`, puedes enviar cada selección visual al portapapeles usando estas opciones:

```vim
set clipboard=unnamed,autoselect
set guioptions+=a
```

Comandos help:

```
:h clipboard-unnamed
:h autoselect
:h 'go_a'
```

### Uso de portapapeles (Linux, BSD, ...)

Si su sistema operativo utiliza [X](http://www.x.org/wiki), las cosas funcionan un poco diferente. X implementa el [Protocolo del Sistema de Ventanas X](http://www.x.org/releases/X11R7.7/doc/xproto/x11protocol.html) que resulta estar en la versión principal 11 desde 1987, de ahí que X también se llame a menudo X11.

Anteriormente, en X10, se introdujeron los [buffers de corte](http://www.x.org/releases/X11R7.7/doc/xorg-docs/icccm/icccm.html#Peer_to_Peer_Communication_by_Means_of_Cut_Buffers), que funcionaban como un portapapeles, ya que el texto copiado era guardado por X y era accesible por todas las demás aplicaciones. Este mecanismo todavía existe en X, pero su uso está obsoleto y la mayoría del software ya no lo utiliza.

Hoy en día los datos se transfieren entre aplicaciones por medio de [selecciones](http://www.x.org/releases/X11R7.7/doc/xorg-docs/icccm/icccm.html#Peer_to_Peer_Communication_by_Means_of_Selections). De los 3 átomos de selección definidos, sólo 2 se utilizan en la práctica: PRIMARY y CLIPBOARD.

Las selecciones funcionan más o menos así:

```
Program A: <ctrl+c>
Program A: reclamar la propiedad de CLIPBOARD
Program B: <ctrl+v>
Program B: Tenga en cuenta que la propiedad de CLIPBOARD la tiene el Programa A
Program B: solicitar datos al Programa A
Program A: responder a la solicitud y enviar los datos al Programa B
Program B: recibe los datos del Programa A y los inserta en la ventana
```

| Selección | ¿Cuándo se utiliza? | ¿Cómo se pega? | ¿Cómo se accede desde Vim? |
|-----------|------------|---------------|-------------------------|
| PRIMARY   | Selección de texto             | `middle-click`, `shift+insert` | registro `*` |
| CLIPBOARD | Selección de texto y `ctrl+c` | `ctrl+v`                       | registro `+` |

**NOTA**: ¡Las selecciones (no, ni siquiera la selección del CLIPBOARD) nunca se guardan en el servidor X! Por lo tanto, se pierden los datos copiados con `ctrl+c` cuando se cierra la aplicación.

Utilice `"*p` para pegar la selección PRIMARIA o `"+y1G` para tirar todo el archivo a la selección CLIPBOARD.

Si resulta que accede a uno de los dos registros todo el tiempo, considere usar

```vim
set clipboard^=unnamed      " registro *
" or
set clipboard^=unnamedplus  " registro +
```

(El `^=` se utiliza para anteponer al valor por defecto, `:h :set^=`).

Esto hará que todas las operaciones de y/borrar/poner usen `*` o `+` en lugar del registro sin nombre `"`. Después puedes simplemente usar `y` o `p` para acceder a tu selección X elegida.

Comandos help:

```vim
:h clipboard-unnamed
:h clipboard-unnamedplus
```

<!-- Termine aquí -->

## Restaurar la posición del cursor al abrir un archivo

Al abrir un archivo, el cursor se situará en la línea 1, columna 1. Afortunadamente, el archivo viminfo recuerda los [marcadores](#marcadores). La marca `"` contiene la posición en el búfer en la que lo dejaste.

```vim
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif
```

Leer: Si la marca `"` contiene un número de línea mayor que la línea 1 pero no mayor que la última línea del archivo, salta a ella.

    :h viminfo-'
    :h `quote
    :h g`

## Archivos temporales

### Archivos de respaldo

Antes de guardar un archivo, Vim crea un archivo de copia de seguridad. Si la escritura en el disco fue exitosa, el archivo de respaldo será borrado.

Con `:set backup`, la copia de seguridad persistirá. Esto significa que el archivo de copia de seguridad siempre tendrá el mismo contenido que el archivo original antes del último guardado. Depende de usted decidir si esto es útil o no.

Puedes desactivar las copias de seguridad por completo con `:set nobackup nowritebackup`, pero no deberías necesitarlo hoy en día. La función `'writebackup'' es una característica de seguridad que asegura que no se pierda el archivo original en caso de que se falle al guardarlo, sin importar si se guarda el archivo de respaldo después o no.

Si usas frecuentemente Vim para editar archivos enormes, [y probablemente no deberías](#editing-huge-files-is-slow), puedes excluirlos de las copias de seguridad con `'backupskip'`.

Vim conoce diferentes maneras de crear una copia de seguridad: _copiar_ y _renombrar_.

- **Copiar**
    1. Se crea una copia completa del archivo original y se utiliza como copia de seguridad.
    2. El archivo original se vacía y luego se llena con el contenido del buffer de Vim.
- **Renombrar**
    1. El archivo original es renombrado al archivo de respaldo.
    2. El contenido del buffer de Vim se escribe en un nuevo archivo con el nombre del archivo original.

Vea :h 'backupcopy' para conocer todos los detalles.

---

Demo:

```vim
:set backup backupskip= backupdir=. backupext=-backup
:e /tmp/foo
ifoo<esc>
:w
" se crea el archivo original, no es necesario el archivo de copia de seguridad
obar<esc>
:w
" se crea el archivo de copia de seguridad, el archivo original se actualiza
```

```diff
$ diff -u /tmp/foo-backup /tmp/foo
--- /tmp/foo-backup     2017-04-22 15:05:13.000000000 +0200
+++ /tmp/foo    2017-04-22 15:05:25.000000000 +0200
@@ -1 +1,2 @@
 foo
+bar
```

---

    :h backup
    :h write-fail

### Archivos swap

Al editar un archivo, los cambios no guardados se escriben en un archivo de intercambio.

Obtenga el nombre del archivo de intercambio actual con `:swapname`. Desactívelos con `:set noswapfile`.

Un archivo de intercambio se actualiza ya sea con los 200 caracteres o cuando no se ha escrito nada durante 4 segundos. Se borran cuando se deja de editar el archivo. Puede cambiar estos números con `:h 'updatecount'` y `:h 'updatetime'`.

Si Vim muere (por ejemplo, por un corte de energía), se pierden todos los cambios desde la última vez que se escribió el archivo en el disco, pero el archivo de intercambio no se borrará. Ahora, si vuelve a editar el archivo, Vim le ofrecerá la posibilidad de recuperar el archivo desde el archivo de intercambio.

Cuando dos personas intentan editar el mismo archivo, la segunda persona recibirá un aviso de que el archivo de intercambio ya existe. Esto evita que la gente intente guardar diferentes versiones de un archivo. Si no quiere ese comportamiento, vea `:h 'directory'`.

    :h swap-file
    :h usr_11

### Deshacer archivos

El [árbol de deshacer](#árbol-de-deshacer) se mantiene en memoria y se perderá cuando Vim se cierre. Si quiere que persista, `:set undofile`. Esto guardará el archivo de deshacer para `~/foo.c` en `~/foo.c.un~`.

    :h 'undofile'
    :h undo-persistence

### Archivos viminfo

Cuando los archivos de respaldo, tipos swap y de deshacer se refieren al estado del texto, los archivos viminfo se utilizan para guardar todo lo demás que, de otro modo, se perdería al salir de Vim. El archivo viminfo guarda los historiales (línea de comandos, búsqueda, entrada), registros, marcas, lista de búferes, variables globales, etc.

Por defecto, el viminfo se escribe en `~/.viminfo`.

    :h viminfo
    :h 'viminfo'

### Ejemplo de configuración de archivos temporales

Poner todos los archivos temporales en su propio directorio bajo `~/.vim/files`:

```vim
" cree un directorio si es necesario
if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files')
endif

" archivos de respaldo
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
" archivos swap
set directory   =$HOME/.vim/files/swap//
set updatecount =100
" archivos de deshacer
set undofile
set undodir     =$HOME/.vim/files/undo/
" archivos viminfo
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
```

## Editando archivos remotos

Vim viene con el plugin `netrw` que permite editar archivos remotos. En realidad, transfiere el archivo remoto a un archivo temporal local a través de `scp`, abre un buffer usando ese archivo, y escribe los cambios de vuelta al archivo remoto al guardarlo.

Esto es extremadamente útil si quieres usar tu configuración local en lugar de entrar por ssh en un servidor y usar lo que los administradores quieran que uses.

```
:e scp://bram@awesome.site.com/.vimrc
```

Si ya tienes un `~/.ssh/config` configurado, este se utiliza automáticamente:

```
Host pedro
    HostName computadoradepedro.site.com
    Port 1234
    User pedro_pérez
```

Asumiendo el contenido anterior en `~/.ssh/config`, esto funciona igual de bien:

```
:e scp://awesome/.vimrc
```

Algo similar puede hacerse con un `~/.netrc`, ver `:h netrw-netrc`.

Asegúrese de leer `:h netrw-ssh-hack` y `:h g:netrw_ssh_cmd`.

---


Otra posibilidad es usar [sshfs](https://wiki.archlinux.org/index.php/Sshfs) (link en inglés) que utiliza [FUSE](https://en.wikipedia.org/wiki/Filesystem_in_Userspace) (link en inglés) para montar un sistema de archivos remoto en su sistema de archivos local.

## Gestión de plugins

[Pathogen](https://github.com/tpope/vim-pathogen) (contenido del link en inglés) fue la primera herramienta popular para gestionar plugins. En realidad sólo ajusta la ruta de ejecución (`:h 'rtp'`) para incluir todas las cosas puestas bajo un determinado directorio. Tienes que clonar los repositorios de los plugins allí mismo.

Los verdaderos gestores de plugins exponen comandos que te ayudan a instalar y actualizar plugins desde Vim.

[Lista de gestores de plugins](PLUGINS.md#plugin-managers)

## Inserción en bloque

Esta es una técnica para insertar el mismo texto en varias líneas consecutivas al mismo tiempo. Vea este [demo](https://raw.githubusercontent.com/mhinz/vim-galore/master/static/images/content-block_insert.gif).

Cambie al modo de bloque visual con `<c-v>`. Después baja unas cuantas líneas. Pulsa `I` o `A` y empieza a introducir tu texto.

Puede ser un poco confuso al principio, pero el texto siempre se introduce para la línea actual y sólo después de terminar la inserción actual, el mismo texto se aplicará a todas las demás líneas de la selección visual anterior.

Así que un ejemplo sencillo es `<c-v>3jItext<esc>`.

Si tiene líneas de diferente longitud y quiere añadir el mismo texto justo después del final de cada línea, haga lo siguiente `<c-v>3j$Atext<esc>`.

A veces necesitas colocar el cursor en algún lugar después del final de la línea actual. No puede hacerlo por defecto, pero puede establecer la opción `virtualedit`:


```vim
set virtualedit=all
```

Después, `$10l` o `90|` funcionan incluso después del final de la línea.

Vea `:h blockwise-examples` para más información. Puede parecer complicado al principio, pero rápidamente se convierte en algo natural.

Si quiere ser realmente sofisticado, eche un vistazo a los [cursores multiples](https://github.com/terryma/vim-multiple-cursors).

## Ejecución de programas externos y uso de filtros

<!-- TERMINE AQUÍ -->

Disclaimer: Vim is single-threaded, so running an external program in the
foreground will block everything else. Sure, you can use one of Vim's
programming interfaces, e.g. Lua, and use its thread support, but during that
time the Vim process is blocked nevertheless. Neovim fixed that by adding a
proper job API.

(Apparently Bram is thinking about adding job control to Vim as well. If you
have a very recent version, see `:helpgrep startjob`.)

Use `:!` to start a job. If you want to list the files in the current working
directory, use `:!ls`. Use `|` for piping in the shell as usual, e.g. `:!ls -1 |
sort | tail -n5`.

Without a range, the output of `:!` will be shown in a scrollable window. On the
other hand, if a range is given, these lines will be
[filtered](https://en.wikipedia.org/wiki/Filter_(software)). This means they
will be piped to the
[stdin](https://en.wikipedia.org/wiki/Standard_streams#Standard_input_.28stdin.29)
of the filter program and after processing be replaced by the
[stdout](https://en.wikipedia.org/wiki/Standard_streams#Standard_output_.28stdout.29)
of the filter. E.g. for prepending numbers to the next 5 lines, use this:

    :.,+4!nl -ba -w1 -s' '

Since manually adding the range is quite burdensome, Vim also provides some
helpers for convenience. As always with ranges, you can also select lines in
visual mode and then hit `:`. There's also an operator `!` that takes a motion.
E.g. `!ip!sort` will sort the lines of the current paragraph.

A good use case for filtering is the [Go programming
language](https://golang.org). The indentation is pretty opinionated, it even
comes with a filter called `gofmt` for indenting Go source code properly. So
plugins for Go often provide helper commands called `:Fmt` that basically do
`:%!gofmt`, so they indent all lines in the file.

People often use `:r !prog` to put the output of prog below the current line,
which is fine for scripts, but when doing it on the fly, I find it easier to use
`!!ls` instead, which replaces the current line.

    :h filter
    :h :read!

## Cscope

[Cscope](http://cscope.sourceforge.net/) does more things than
[ctags](http://ctags.sourceforge.net/), but only supports C (and C++ and Java to
some extent).

Whereas a tags file only knows where a symbol was defined, a cscope database
knows much more about your data:

- Where is this symbol defined?
- Where is this symbol used?
- What is this global symbol's definition?
- Where did this variable get its value?
- Where is this function in the source files?
- What functions call this function?
- What functions are called by this function?
- Where does the message "out of space" come from?
- Where is this source file in the directory structure?
- What files include this header file?

### 1. Build the database

Do this in the root of your project:

```sh
$ cscope -bqR
```

This will create 3 files: `cscope{,.in,.po}.out` in the current working
directory. Think of them as your database.

Unfortunately `cscope` only analyzes `*.[c|h|y|l]` files by default. If you want
to use cscope for a Java project instead, do this:

```sh
$ find . -name "*.java" > cscope.files
$ cscope -bq
```

### 2. Add the database

Open a connection to your freshly built database:

```vim
:cs add cscope.out
```

Verify that the connection was made:

```vim
:cs show
```

(Yes, you can add multiple connections.)

### 3. Query the database

```vim
:cs find <kind> <query>
```

E.g. `:cs find d foo` will list all functions that are called by `foo(...)`.

| Kind | Explanation |
|------|-------------|
| s    | **s**ymbol: find all references to the token        |
| g    | **g**lobal: find global definition(s) of the token  |
| c    | **c**alls: find all calls to the function           |
| t    | **t**ext: find all instances of the text            |
| e    | **e**grep: egrep search for the word                |
| f    | **f**ile: open the filename                         |
| i    | **i**ncludes: find files that include the filename  |
| d    | **d**epends: find functions called by this function |

I suggest some convenience mappings e.g.:

```vim
nnoremap <buffer> <leader>cs :cscope find s  <c-r>=expand('<cword>')<cr><cr>
nnoremap <buffer> <leader>cg :cscope find g  <c-r>=expand('<cword>')<cr><cr>
nnoremap <buffer> <leader>cc :cscope find c  <c-r>=expand('<cword>')<cr><cr>
nnoremap <buffer> <leader>ct :cscope find t  <c-r>=expand('<cword>')<cr><cr>
nnoremap <buffer> <leader>ce :cscope find e  <c-r>=expand('<cword>')<cr><cr>
nnoremap <buffer> <leader>cf :cscope find f  <c-r>=expand('<cfile>')<cr><cr>
nnoremap <buffer> <leader>ci :cscope find i ^<c-r>=expand('<cfile>')<cr>$<cr>
nnoremap <buffer> <leader>cd :cscope find d  <c-r>=expand('<cword>')<cr><cr>
```

So, when `:tag` (or `<c-]>`) jumps to a definition from the tags file, `:cstag`
does the same, but also takes connected cscope databases into account. The
option `'cscopetag'` makes `:tag` act like `:cstag` automatically. This is very
convenient if you already have tag-related mappings.

Help: `:h cscope`

## MatchIt

Since Vim is written in C, a lot of features assume C-like syntax. By default,
if your cursor is on `{` or `#endif`, you can use `%` to jump to the
corresponding `}` or `#ifdef` respectively.

Vim comes bundled with a plugin called matchit.vim which is not enabled by
default. It makes `%` also cycle through HTML tags, if/else/endif constructs in
VimL etc. and introduces a few new commands.

#### Installation for Vim 8

```vim
" vimrc
packadd! matchit
```

#### Installation for Vim 7 and older

```vim
" vimrc
runtime macros/matchit.vim
```

Since the documentation of matchit is pretty extensive, I suggest also doing the
following once:

```vim
:!mkdir -p ~/.vim/doc
:!cp $VIMRUNTIME/macros/matchit.txt ~/.vim/doc
:helptags ~/.vim/doc
```

#### Small intro

The plugin is ready to use now. See `:h matchit-intro` for the supported
commands and `:h matchit-languages` for the supported languages.

That said, it's easy to define your own matching pairs:

```vim
autocmd FileType python let b:match_words = '\<if\>:\<elif\>:\<else\>'
```

Afterwards you can cycle through these 3 statements in any Python file by using
`%` (forward) or `g%` (backward).

Help:

```
:h matchit-install
:h matchit
:h b:match_words
```

## True colors

Using true colors in a terminal emulator means being able to use 24 bits for RGB
colors. That makes 16777216 (2^24) colors instead of the usual 256.

As explained [here](#colorschemes), colorschemes can actually be _two_
colorschemes by having definitions for terminals (xterm) and for GUIs (gvim).
This made sense before terminal emulators learned about true colors.

After `:set termguicolors`, Vim starts emitting escape sequences only understood
by a terminal emulator that supports true colors. When your colors look weird,
chances are your terminal emulator doesn't support true colors or your
colorcheme has no GUI colors defined.

Many people use the terminal multiplexer
[tmux](https://github.com/tmux/tmux/wiki) which basically sits in between the
terminal emulator and Vim. To make tmux _forward_ the true color escape
sequences emitted by Vim, you have to put the following in the user's
`.tmux.conf`:

```
set-option -g  default-terminal 'tmux-256color'
set-option -ga terminal-overrides ',xterm-256color:Tc'
```

- The first line should be the same for most people and denotes the `$TERM` to
  be used _within_ tmux.
- The second line adds the tmux-specific `Tc` (true color) capability to the
  other terminfo entries of `xterm-256color`. Obviously this assumes that the
  user is using `TERM=xterm-256color` _outside_ of tmux.

So, here is the checklist for enabling true colors:

- Read `:h 'termguicolors'`.
- Put `set termguicolors` in your vimrc.
- Make sure your colorscheme has color definitions for GUIs. (It should contain
  lines with `guifg` and `guibg`.)
- Make sure your terminal emulator of choice supports true colors.
- Using tmux? Configure it to add the `Tc` capability.

A popular reference for colors in the terminal:
https://gist.github.com/XVilka/8346728

# Tips

## Go to other end of selected text

`o` and `O` in a visual selection make the cursor go to the other end. Try with
blockwise selection to see the difference. This is useful for quickly changing
the size of the selected text.

```
:h v_o
:h v_O
```

## Saner behavior of n and N

The direction of `n` and `N` depends on whether `/` or `?` was used for
searching forward or backward respectively. This is pretty confusing to me.

If you want `n` to always search forward and `N` backward, use this:

```vim
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]

nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]
```

## Saner command-line history

If you're anything like me, you're used to going to next and previous items via
`<c-n>` and `<c-p>` respectively. By default, this also works in the
command-line and recalls older or more recent command-lines from history.

So far, so good. But `<up>` and `<down>` are even smarter! They recall the
command-line whose beginning matches the current command-line. E.g. `:echo <up>`
may change to `:echo "Vim rocks!"`.

Of course, I don't want you to reach for the arrow keys:

```vim
cnoremap <expr> <c-n> wildmenumode() ? "\<c-n>" : "\<down>"
cnoremap <expr> <c-p> wildmenumode() ? "\<c-p>" : "\<up>"
```

Here we also distinguish between command-line history and the wildmenu. See `:h
'wildmenu'`.

I depend on this behaviour several times a day.

## Saner CTRL-L

By default, `<c-l>` clears and redraws the screen (like `:redraw!`). The
following mapping does the same, plus de-highlighting the matches found via `/`,
`?` etc., plus fixing syntax highlighting (sometimes Vim loses highlighting due
to complex highlighting rules), plus force updating the syntax highlighting in
diff mode:

```vim
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>
```

## Disable audible and visual bells

```vim
set noerrorbells
set novisualbell
set t_vb=
```

See [Vim Wiki: Disable beeping](http://vim.wikia.com/wiki/Disable_beeping).

## Quickly move current line

Sometimes I need a quick way to move the current line above or below:

```vim
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>
```

These mappings also take a count, so `2]e` moves the current line 2 lines below.

## Quickly add empty lines

```vim
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
```

Now `5[<space>` inserts 5 blank lines above the current line.

## Quickly edit your macros

This is a real gem! The mapping takes a register (or `*` by default) and opens
it in the cmdline-window. Hit `<cr>` when you're done editing for setting the
register.

I often use this to correct typos I did while recording a macro.

```vim
nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>
```

Use it like this `<leader>m` or `"q<leader>m`.

Notice the use of `<c-r><c-r>` to make sure that the `<c-r>` is inserted
literally. See `:h c_^R^R`.

## Quickly jump to header or source file

This technique can probably be applied to many filetypes. It sets _file marks_
(see `:h marks`) when leaving a source or header file, so you can quickly jump
back to the last accessed one by using `'C` or `'H` (see `:h 'A`).

```vim
autocmd BufLeave *.{c,cpp} mark C
autocmd BufLeave *.h       mark H
```

**NOTE**: The info is saved in the viminfo file, so make sure that `:set
viminfo?` includes `:h viminfo-'`.

## Quickly change font size in GUI

I think this was taken from tpope's config:

```vim
command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')
```

## Change cursor style dependent on mode

I like to use a block cursor in normal mode, i-beam cursor in insert mode, and
underline cursor in replace mode.

```vim
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif
```

This simply tells Vim to print a certain sequence of characters ([escape
sequence](https://en.wikipedia.org/wiki/Escape_sequence)) when entering/leaving
insert mode. The underlying terminal, or programs like
[tmux](https://tmux.github.io) that sit between Vim and the terminal, will
process and evaluate it.

There's one drawback though: there are many terminal emulator implementations
and not all use the same sequences for doing the same things. The sequences used
above might not work with your implementation. Your implementation might not
even support different cursor styles. Check the documentation.

The example above works with iTerm2.

## Don't lose selection when shifting sidewards

If you select one or more lines, you can use `<` and `>` for shifting them
sidewards. Unfortunately you immediately lose the selection afterwards.

You can use `gv` to reselect the last selection (see `:h gv`), thus you can work
around it like this:

```vim
xnoremap <  <gv
xnoremap >  >gv
```

Now you can use `>>>>>` on your visual selection without any problems.

**NOTE**: The same can be achieved using `.`, which repeats the last change.

## Reload a file on saving

Using [autocmds](#autocmds) you can do anything on saving a file, e.g. sourcing
it in case of a dotfile or running a linter to check for syntactical errors in
your source code.

```vim
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost ~/.Xdefaults call system('xrdb ~/.Xdefaults')
```

## Smarter cursorline

I love the cursorline, but I only want to use it in the current window and not
when being in insert mode:

```vim
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline
```

## Faster keyword completion

The keyword completion (`<c-n>`/`<c-p>`) tries completing whatever is listed in
the `'complete'` option. By default, this also includes tags (which can be
annoying) and scanning all included files (which can be very slow). If you can
live without these things, disable them:

```vim
set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags
```

## Cosmetic changes to colorschemes

Always use a dark gray statusline, no matter what colorscheme is chosen:

```vim
autocmd ColorScheme * highlight StatusLine ctermbg=darkgray cterm=NONE guibg=darkgray gui=NONE
```

This triggers every time you use `:colorscheme ...`. If you want it to trigger
only for a certain colorscheme:

```vim
autocmd ColorScheme desert highlight StatusLine ctermbg=darkgray cterm=NONE guibg=darkgray gui=NONE
```

This triggers only for `:colorscheme desert`.

# Commands

Useful commands that are good to know. Use `:h :<command name>` to learn more
about them, e.g. `:h :global`.

## :global and :vglobal

Execute a command on all matching lines. E.g. `:global /regexp/ print` will use
`:print` on all lines that contain "regexp".

Fun fact: You probably all know good old grep, the filter program written by Ken
Thompson. What does it do? It prints all lines matching a certain regular
expression! Now guess the short form of `:global /regexp/ print`? That's right!
It's `:g/re/p`. Ken Thompson was inspired by vi's `:global` when he wrote grep.

Despite its name, `:global` only acts on all lines by default, but it also takes
a range. Assume you want use `:delete` on all lines from the current line to the
next blank line (matched by the regular expression `^$`) that contain "foo":

```vim
:,/^$/g/foo/d
```

For executing commands on all lines that do _not_ match a given pattern, use
`:global!` or its alias `:vglobal` (think _inVerse_) instead.

## :normal and :execute

These commands are commonly used in Vim scripts.

With `:normal` you can do normal mode mappings from the command-line. E.g.
`:normal! 4j` will make the cursor go down 4 lines (without using any custom
mapping for "j" due to the "!").

Mind that `:normal` also takes a [range](#ranges), so `:%norm! Iabc` would
prepend "abc" to every line.

With `:execute` you can mix commands with expressions. Assume you edit a C
source file and want to switch to its header file:

```vim
:execute 'edit' fnamemodify(expand('%'), ':r') . '.h'
```

Both commands are often used together. Assume you want to make the cursor go
down "n" lines:

```vim
:let n = 4
:execute 'normal!' n . 'j'
```

## :redir and execute()

Many commands print messages and `:redir` allows to redirect that output. You
can redirect to files, [registers](#registers) or variables.

```vim
:redir => var
:reg
:redir END
:echo var
:" For fun let's also put it onto the current buffer.
:put =var
```

In Vim 8 there is an even shorter way:

```vim
:put =execute('reg')
```

Help:

```
:h :redir
:h execute()
```

# Debugging

## General tips

If you encounter a strange behaviour, try reproducing it like this:

```
vim -u NONE -N
```

This will start Vim without vimrc (thus default settings) and in nocompatible
mode (which makes it use Vim defaults instead of vi defaults). (See `:h
--noplugin` for other combinations of what to load at start.)

If you can still reproduce it now, it's most likely a bug in Vim itself! Report
it to the [vim_dev](https://groups.google.com/forum/#!forum/vim_dev) mailing
list. Most of the time the issue won't be resolved at this time and you'll have
to further investigate.

Plugins often introduce new/changed/faulty behaviour. E.g. if it happens on
saving, check `:verb au BufWritePost` to get a list of potential culprits.

If you're using a plugin manager, comment them out until you find the culprit.

Issue is still not resolved? If it's not a plugin, it must be your other
settings, so maybe your options or autocmds etc.

Time to use binary search. Repeatedly split the search space in two until you
find the culprit line. Due to the nature of binary division, it won't take many
steps.

In practice, it works like this: Put the `:finish` command in the middle of your
vimrc. Vim will skip everything after it. If it still happens, the problem is in
the active upper half. Move the `:finish` to the middle of _that_ half.
Otherwise, the issue is in the inactive lower half. Move the `:finish` to the
middle of _that_ half. And so on.

## Verbosity

Another useful way for observing what Vim is currently doing is increasing the
verbosity level. Currently Vim supports 9 different levels. See `:h 'verbose'`
for the full list.

```vim
:e /tmp/foo
:set verbose=2
:w
:set verbose=0
```

This would show all the files that get sourced, e.g. the undo file or various
plugins that act on saving.

If you only want increase verbosity for a single command, there's also
`:verbose`, which simply gets put in front of any other command. It takes the
verbosity level as count and defaults to 1:

```vim
:verb set verbose
"  verbose=1
:10verb set verbose
"  verbose=10
```

It's very often used with its default verbosity level 1 to show where an option
was set last:

```vim
:verb set ai?
"      Last set from ~/.vim/vimrc
```

Naturally, the higher the verbosity level the more overwhelming the output. But
fear no more, you can simply redirect the output to a file:

```vim
:set verbosefile=/tmp/foo | 15verbose echo "foo" | vsplit /tmp/foo
```

You can also enable verbosity at starting time, with the `-V` option. It
defaults to verbosity level 10. E.g. `vim -V5`.

## Profiling startup time

Vim startup feels slow? Time to crunch some numbers:

```
vim --startuptime /tmp/startup.log +q && vim /tmp/startup.log
```

The first column is the most important as it shows the elapsed absolute time. If
there is a big jump in time between two lines, the second line is either a very
big file or a file with faulty VimL code that is worth investigating.

## Profiling at runtime

Required [feature](#what-kind-of-vim-am-i-running): `+profile`

Vim provides a built-in capability for profiling at runtime and is a great way
to find slow code in your environment.

The `:profile` command takes a bunch of sub-commands for specifying what to
profile.

If you want to profile _everything_, do this:

    :profile start /tmp/profile.log
    :profile file *
    :profile func *
    <do something in Vim>
    :qa

Vim keeps the profiling information in memory and only writes it out to the
logfile on exit. (Neovim has fixed this using `:profile dump`).

Have a look at `/tmp/profile.log`. All code that was executed during profiling
will be shown. Every line, how often it was executed and how much time it took.

Jump to the bottom of the log. Here are two different sections `FUNCTIONS SORTED
ON TOTAL TIME` and `FUNCTIONS SORTED ON SELF TIME` that are worth gold. At a
quick glance you can see which functions are taking the longest.

You can use `:profile` during startup as well:

    $ vim --cmd 'prof start prof.log | prof file * | prof func *' test.c
    :q
    $ tail -50 prof.log

## Debugging Vim scripts

If you ever used a command-line debugger before, `:debug` will quickly feel
familiar.

Simply prepend `:debug` to any other command and you'll be put into debug mode.
That is, the execution will stop at the first line about to be executed and that
line will be displayed.

See `:h >cont` and below for the 6 available debugger commands and note that,
like in gdb and similar debuggers, you can also use their short forms: `c`, `q`,
`n`, `s`, `i`, and `f`.

Apart from that those, you're free to use any Vim command, e.g. `:echo myvar`,
which gets executed in the context of the current position in the code.

You basically get a
[REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) by
simply using `:debug 1`.

It would be a pain if you had to single-step through every single line, so of
course we can define breakpoints, too. (Breakpoints are called breakpoints,
because the execution stops when they're hit, thus you can simply skip code
you're not interested in.) See `:h :breakadd`, `:h :breakdel`, and `:h
:breaklist` for further details.

Let's assume you want to know what code is run every time you save a file:

```vim
:au BufWritePost
" signify  BufWritePost
"     *         call sy#start()
:breakadd func *start
:w
" Breakpoint in "sy#start" line 1
" Entering Debug mode.  Type "cont" to continue.
" function sy#start
" line 1: if g:signify_locked
>s
" function sy#start
" line 3: endif
>
" function sy#start
" line 5: let sy_path = resolve(expand('%:p'))
>q
:breakdel *
```

As you can see, using `<cr>` will repeat the previous debugger command, `s` in
this case.

`:debug` can be used in combination with the [verbose](#verbosity) option.

## Debugging syntax files

Syntax files are often the cause for slowdowns due to wrong and/or complex
regular expressions. If the `+profile` [feature](#what-kind-of-vim-am-i-running)
is compiled in, Vim provides the super useful `:syntime` command.

```vim
:syntime on
" hit <c-l> a few times to redraw the window which causes the syntax rules to get applied again
:syntime off
:syntime report
```

The output contains important metrics. E.g. you can see which regexp takes too
long and should be optimized or which regexps are used all the time but never
even match.

See `:h :syntime`.

# Miscellaneous

## Additional resources

| Resource | Description |
|----------|-------------|
| [Seven habits of effective text editing](http://www.moolenaar.net/habits.html) | By Bram Moolenaar, the author of Vim. |
| [Seven habits of effective text editing 2.0 (PDF)](http://www.moolenaar.net/habits_2007.pdf) | See above. |
| [IBM DeveloperWorks: Scripting the Vim editor](http://www.ibm.com/developerworks/views/linux/libraryview.jsp?sort_order=asc&sort_by=Title&search_by=scripting+the+vim+editor) | Five-part series on Vim scripting. |
| [Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com) | Develop a Vim plugin from scratch. |
| [Practical Vim (2nd Edition)](https://pragprog.com/titles/dnvim2/practical-vim-second-edition) | Hands down the best book about Vim. |
| [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html) | Common misconceptions explained. |
| [Your problem with Vim is that you don't grok vi](http://stackoverflow.com/a/1220118) | Concise, informative and correct. A real gem. |

#### Screencasts

- [vimcasts.org](http://vimcasts.org/episodes/archive)
- [By wincent](https://www.youtube.com/channel/UCXPHFM88IlFn68OmLwtPmZA)
- [By Derek Wyatt](http://derekwyatt.org/vim/tutorials/index.html)

## Vim distributions

Vim distributions are bundles of custom settings and plugins for Vim.

More advanced users know how to configure their editor anyway, so distributions
are mostly targeted at beginners. If you think about that, it's quite
paradoxical though: Making it easier by adding even more things to learn about?

I know that many people don't want to spend hours and hours on customizing an
editor (and actually you never stop customizing your vimrc when you finally got
hooked), but eventually you only get efficient in Vim when you take the time to
learn it properly.

Repeat after me: "A programmer should know their tools."

Anyway, if you know what you're doing, you might draw some inspiration from
looking at a few distributions:

- [cream](http://cream.sourceforge.net)
- [janus](https://github.com/carlhuda/janus.git)
- [spacevim](https://github.com/SpaceVim/SpaceVim)
- [spf13](https://github.com/spf13/spf13-vim)

## Standard plugins

Many people are surprised by the fact that Vim comes with a handful of standard
plugins. Some get loaded by default (`:e $VIMRUNTIME/plugin`) and some are not
(`:e $VIMRUNTIME/pack/dist/opt`). Read `:h pack-add` on how to source the
latter.

Most of the plugins that get loaded by default will never get used, though.
Disable them as you see fit. They will still be shown as sourced
(`:scriptnames`), but only the first lines actually get read before Vim bails
out. No further code (mappings, commands, logic) will be processed.

| Plugin     | Disable it using..                  | Help |
|------------|-------------------------------------|------|
| 2html      | `let g:loaded_2html_plugin = 1`     | `:h 2html` |
| getscript  | `let g:loaded_getscriptPlugin = 1`  | `:h pi_getscript` |
| gzip       | `let g:loaded_gzip = 1`             | `:h pi_gzip` |
| logipat    | `let g:loaded_logipat = 1`          | `:h pi_logipat` |
| matchparen | `let g:loaded_matchparen = 1`       | `:h pi_paren` |
| netrw      | `let g:loaded_netrwPlugin = 1`      | `:h pi_netrw` |
| rrhelper   | `let g:loaded_rrhelper = 1`         | `:e $VIMRUNTIME/plugin/rrhelper.vim` |
| spellfile  | `let g:loaded_spellfile_plugin = 1` | `:h spellfile.vim` |
| tar        | `let g:loaded_tarPlugin = 1`        | `:h pi_tar` |
| vimball    | `let g:loaded_vimballPlugin = 1`    | `:h pi_vimball` |
| zip        | `let g:loaded_zipPlugin = 1`        | `:h pi_zip` |

## Map CapsLock to Control

CapsLock belongs to the most useless keys on your keyboard, but it's much easier
to reach than the Control key, since it lies on your [home
row](https://raw.githubusercontent.com/mhinz/vim-galore/master/static/images/content-homerow.png).
Mapping CapsLock to Control is a great way to prevent or at least reduce
[RSI](https://de.wikipedia.org/wiki/Repetitive-Strain-Injury-Syndrom) if you
program a lot.

Attention: When you get used to it, you can't live without it anymore.

**macOS**:

`System Preferences -> Keyboard -> Keyboard Tab -> Modifier Keys`. Change
"CapsLock" to "Control".

**Linux**:

To change the keys in X, put this in your `~/.xmodmap`:

    remove Lock = Caps_Lock
    keysym Caps_Lock = Control_L
    add Control = Control_L

Afterwards source it via `$ xmodmap ~/.xmodmap`.

An alternative would be using [caps2esc](https://github.com/oblitum/caps2esc) or
[xcape](https://github.com/alols/xcape).

**Windows**:

See [superuser.com: Map Caps-Lock to Control in Windows
8.1](http://superuser.com/questions/764782/map-caps-lock-to-control-in-windows-8-1).

## Generating HTML from buffer

Generate HTML from any buffer using `:TOhtml` from the 2html [standard
plugin](#standard-plugins). The output can be used for printing or easy web
publishing.

The command creates a new buffer of the same name with `.html` appended. The
colors are the same as seen in Vim. They depend on the
[colorscheme](#colorschemes).

The plugin knows several options to finetune the output, e.g. for setting the
encoding and font.

See `:h :TOhtml`.

## Easter eggs

| Command   | Message |
|-----------|---------|
| `:Ni!` | `Do you demand a shrubbery?` |
| `:h 'sm'` | `NOTE: Use of the short form is rated PG.` |
| `:h 42` | `What is the meaning of life, the universe and everything? Douglas Adams, the only person who knew what this question really was about is now dead, unfortunately.  So now you might wonder what the meaning of death is...` |
| `:h UserGettingBored` | `When the user presses the same key 42 times. Just kidding! :-)` |
| `:h bar` | `Ceci n'est pas une pipe.` |
| `:h holy-grail` | `You found it, Arthur!` |
| `:h map-modes` | `:nunmap can also be used outside of a monastery.` |
| `:help!` | `E478: Don't panic!` (Glitch? When used in a help buffer (`buftype=help`) this works like `:h help.txt` instead.) |
| `:smile` | Try it out yourself. ;-) Added in 7.4.1005. |
| `:hi!` | `Greetings, Vim user!` |

## Why hjkl for navigation?

When [Bill Joy](https://en.wikipedia.org/wiki/Bill_Joy) created
[vi](https://en.wikipedia.org/wiki/Vi), a predecessor of Vim, he did it on a
[ADM-3A](https://en.wikipedia.org/wiki/ADM-3A) which had no extra cursor buttons
but used, you might already guessed it, hjkl instead.

Keyboard layout: [click](https://raw.githubusercontent.com/mhinz/vim-galore/master/static/images/content-adm-3a-layout.jpg)

This also shows why `~` is used to denote the home directory on Unix systems.

# Common problems

## Editing small files is slow

There are two things which can have a huge impact on performance:

1. Complex **regular expressions**. Particular the Ruby syntax file caused
   people to have slowdowns in the past. (Also see [Debugging syntax files](#debugging-syntax-files).)
2. **Screen redraws**. Some features force all lines to redraw.

| Typical culprit | Why? | Solution? |
|-----------------|------|-----------|
| `:set cursorline`        | Causes all lines to redraw. | `:set nocursorline` |
| `:set cursorcolumn`      | Causes all lines to redraw. | `:set nocursorcolumn` |
| `:set relativenumber`    | Causes all lines to redraw. | `:set norelativenumber` |
| `:set foldmethod=syntax` | If the syntax file is slow already, this makes it even worse. | `:set foldmethod=manual`, `:set foldmethod=marker` or [FastFold](https://github.com/Konfekt/FastFold) |
| `:set synmaxcol=3000`    | Due to internal representation, Vim has problems with long lines in general. Highlights columns till column 3000. | `:set synmaxcol=200` |
| matchparen.vim           | Loaded by default. Uses regular expressions to find the accompanying parenthesis. | Disable plugin: `:h matchparen` |

**NOTE**: You only need to do this if you experience actual performance
drawbacks. In most cases using the things mentioned above is absolutely fine.

## Editing huge files is slow

The biggest issue with big files is, that Vim reads the whole file at once. This
is done due to how buffers are represented internally.
([Discussion on vim_dev@](https://groups.google.com/forum/#!topic/vim_dev/oY3i8rqYGD4/discussion))

If you only want to read, `tail hugefile | vim -` is a good workaround.

If you can live without syntax, settings and plugins for the moment:

```
$ vim -u NONE -N
```

This should make navigation quite a lot faster, especially since no expensive
regular expressions for syntax highlighting are used. You should also tell Vim
not to use swapfiles and viminfo files to avoid long delays on writing:

```
$ vim -n -u NONE -i NONE -N
```

Putting it in a nutshell, try to avoid using Vim when intending to write really
huge files. :\

## Bracketed paste (or why do I have to set 'paste' all the time?)

Bracketed paste mode allows terminal emulators to distinguish between typed text
and pasted text.

Did you ever tried pasting code into Vim and afterwards everything seemed messed
up?

This only happens if you paste via `cmd+v`, `shift-insert`, `middle-click` etc.
because then you're just throwing text at the terminal emulator. Vim doesn't
know that you just pasted the text, it thinks you're an extremely fast typist.
Accordingly, it tries to indent the lines and fails.

Obviously this is not an issue, if you paste using Vim's registers, e.g. `"+p`,
because then Vim knows that you're actually pasting.

To workaround this, you have to `:set paste`, so it gets pasted as-is. See `:h
'paste'` and `:h 'pastetoggle'`.

If you're fed up with toggling `'paste'` all the time, have a look at this fine
plugin that does it for you:
[bracketed-paste](https://github.com/ConradIrwin/vim-bracketed-paste).

Additional read from the same author as the plugin:
[here](http://cirw.in/blog/bracketed-paste).

**Neovim**: Neovim tries to make all of this much more seamless and sets
bracketed paste mode automatically if the terminal emulator supports it.

## Delays when using escape key in terminal

If you live in the command-line, you probably use a so-called _terminal
emulator_ like xterm, gnome-terminal, iTerm2, etc. (opposed to a real
[terminal](https://en.wikipedia.org/wiki/Computer_terminal)).

Like their ancestors, terminal emulators use [escape
sequences](https://en.wikipedia.org/wiki/Escape_sequence) (or _control
sequences_) to control things like moving the cursor, changing text colors, etc.
They're simply strings of ASCII characters starting with an escape character
(displayed in [caret notation](https://en.wikipedia.org/wiki/Caret_notation) as
`^[`). When such a string arrives, the terminal emulator looks up the
accompanying action in the [terminfo](https://en.wikipedia.org/wiki/Terminfo)
database.

To make the problem clearer, I'll explain mapping timeouts first. They always
happen when there's ambiguity between mappings:

```vim
:nnoremap ,a  :echo 'foo'<cr>
:nnoremap ,ab :echo 'bar'<cr>
```

Both mappings work as expected, but when typing `,a`, there will be a delay of 1
second, because Vim waits whether the user keys in another `b` or not.

Escape sequences pose the same problem:

- `<esc>` is used a lot for returning to normal mode or quitting an action.
- Cursor keys are encoded using escape sequences.
- Vim expects <kbd>Alt</kbd> (also called _Meta key_) to send a proper 8-bit
  encoding with the high bit set, but many terminal emulators don't support it
  (or don't enable it by default) and send an escape sequence instead.

You can test the above like this: `vim -u NONE -N` and type `i<c-v><left>` and
you'll see a sequence inserted that starts with `^[` which denotes the escape
character.

Putting it in a nutshell, Vim has a hard time distinguishing between a typed
`<esc>` character and a proper escape sequence.

By default, Vim uses `:set timeout timeoutlen=1000`, so it delays on ambiguity
of mappings _and_ key codes by 1 second. This is a sane value for mappings, but
you can define the key code timeout on its own which is the most common
workaround for this entire issue:

```vim
set timeout           " for mappings
set timeoutlen=1000   " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value
```

Under `:h ttimeout` you find a small table showing the relationship between
these options.

If you're using tmux between Vim and your terminal emulator, also put this in
your `~/.tmux.conf`:

```tmux
set -sg escape-time 0
```

## Function search undo

- A search pattern in a command (`/`, `:substitute`, ...) changes the "last used
  search pattern". (It's saved in the `/` register; print it with `:echo @/`).
- A simple text change can be redone with `.`. (It's saved in the `.` register;
  print it with `:echo @.`).

Both things are _not_ the case, if you do them from a function, though! Thus you
can't easily highlight words from a function or redo the text changes made by
it.

Help: `:h function-search-undo`

# Technical quirks

## Newline used for NUL

NUL characters (`\0`) in a file, are stored as newline (`\n`) in memory and
displayed in a buffer as `^@`.

See `man 7 ascii` and `:h NL-used-for-Nul` for more information.

# Terminology

## Vim script? Vimscript? VimL?

`Vim script`, `Vimscript`, and `VimL` all refer to the same thing: The
programming language used for scripting Vim. Even though
[8.0.360](https://github.com/vim/vim/commit/b544f3c81f1e6a50322855681ac266ffaa8e313c)
changed all references from `VimL` to `Vim script`, which can now be considered
the official term, `VimL` is still widespread all over the internet.

No matter which term you use, everyone will understand it.
