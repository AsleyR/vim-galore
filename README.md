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
- [Primeros pasos](#first-steps)
- [Vimrc mínimo](#minimal-vimrc)
- [¿Qué tipo de vim estoy utilizando?](#what-kind-of-vim-am-i-running)
- [Cheatsheets](#cheatsheets)

### [Conceptos Básicos](#conceptos-básicos)

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
- [Esquema de colores](#colorschemes)
- [Folding (Doblamiento)](#folding)
- [Sesiones](#sessions)
- [Localidad](#locality)

### [Utilización](#usage-1)

- [Conseguir ayuda offline](#getting-help-offline)
- [Conseguir ayuda offline (alternativo)](#getting-help-offline-alternative)
- [Conseguir ayuda online](#getting-help-online)
- [Autocmds en la practica](#autocmds-in-practice)
  - [Eventos del usuario](#user-events)
  - [Autocmds anidados](#nested-autocmds)
- [Portapapeles](#clipboard)
  - [Uso de portapapeles (Windows, macOS)](#clipboard-usage-windows-macos)
  - [Uso de portapapeles (Linux, BSD, ...)](#clipboard-usage-linux-bsd-)
- [Restaurar la posición del cursor al abrir un archivo](#restore-cursor-position-when-opening-file)
- [Archivos temporales](#temporary-files)
  - [Archivos de respaldo](#backup-files)
  - [Archivos Swap (Swap Files)](#swap-files)
  - [Deshacer archivos](#undo-files)
  - [Archivos viminfo](#viminfo-files)
  - [Ejemplo de configuración de archivos temporales](#example-configuration-for-temporary-files)
- [Editando archivos remotos](#editing-remote-files)
- [Gestión de plugins](#managing-plugins)
- [Inserción en bloque](#block-insert)
- [Ejecución de programas externos y uso de filtros](#running-external-programs-and-using-filters)
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

### [Comandos](#commands-1)

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

### [Miscelánea](#miscellaneous-1)

- [Recursos adicionales](#additional-resources)
- [Distribucciones de Vim](#vim-distributions)
- [Plugins standard](#standard-plugins)
- [Mapear CapsLock a Control](#map-capslock-to-control)
- [Generar HTML del buffer](#generating-html-from-buffer)
- [Easter eggs](#easter-eggs)
- [¿Por qué hjkl para la navegación?](#why-hjkl-for-navigation)

### [Problemas comunes](#common-problems-1)

- [La edición de archivos pequeños es lenta](#editing-small-files-is-slow)
- [La edición de archivos grandes es lenta](#editing-huge-files-is-slow)
- [Pegar entre corchetes (o ¿por qué tengo que poner "pegar" todo el tiempo?)](#bracketed-paste-or-why-do-i-have-to-set-paste-all-the-time)
- [Retrasos al utilizar la tecla de escape en el terminal](#delays-when-using-escape-key-in-terminal)
- [Deshacer función de busqueda (function-search-undo)](#function-search-undo)

### [Peculiaridades técnicas](#technical-quirks-1)

- [Nueva linea utilizada para NUL](#newline-used-for-nul)

### [Terminología](#terminology-1)

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

1. Crea tu propio [vimrc](#minimal-vimrc).
2. Ten preparadas algunas [cheatsheets](#cheatsheets) listas para las primeras semanas.
3. Lea la sección de [conceptos basicos](#basics) para saber qué es incluso posible en vim.
4. ¡Aprende a la marcha! Uno nunca termina de aprender Vim. Si te encuentras con algún problema, sólo tienes que buscarlo en Internet. Tu problema ya está resuelto. Vim viene con una gran documentación y saber cómo navegar por ella es imprescindible:
   [Conseguir ayuda fuera de línea](#getting-help-offline).
5. Echa un vistazo a los [recursos adicionales](#additional-resources).

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

Ayuda:

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

Ayuda: `:h argument-list`

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

Ayuda:

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

Ayuda:

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

Ayuda:

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

Ayuda: `:h autocommand`

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

Ayuda:

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

Ayuda:

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

<!-- TERMINE aquí -->

Mind that I also show how to achieve the same without using macros, but this
mostly works only for such simple examples. For more complex automation, macros
are the bomb!

Also see: [Quickly edit your macros](#quickly-edit-your-macros)

Help:

```
:h recording
:h 'lazyredraw'
```

## Colorschemes

Colorschemes are the way to style your Vim. Vim consists of many components and
each of those can be customized with different colors for the foreground,
background and a few other attributes like bold text etc. They can be set like
this:

```vim
:highlight Normal ctermbg=1 guibg=red
```

This would paint the background of the editor red. See `:h :highlight` for more
information.

So, colorschemes are mostly collections of `:highlight` commands.

Actually, most colorschemes are really 2 colorschemes! The example above sets
colors via `ctermbg` and `guibg`. The former definition (`cterm*`) will only be
used if Vim was started in a terminal emulator, e.g. xterm. The latter (`gui*`)
will be used in graphical environments like gvim or MacVim.

If you ever happen to use a colorscheme in terminal Vim and the colors don't
look like the ones in the screenshot at all, chances are that the colorscheme
only defines colors for the GUI. Conversely, if you use a graphical Vim (e.g.
gvim or MacVim) and the colors look off, the colorscheme might only define
colors for the terminal.

The latter case can be "solved" by enabling true colors in Neovim or Vim
7.4.1830 and newer. This makes terminal Vim use the GUI definitions instead, but
also requires the terminal emulator itself and all software in between (e.g.
tmux) to be capable of handling true colors. ([This
gist](https://gist.github.com/XVilka/8346728) gives a good overview about the
topic.)

Help:

- `:h 'termguicolors'`
- [List of colorschemes](PLUGINS.md#colorschemes-1)
- [Cosmetic changes to colorschemes](#cosmetic-changes-to-colorschemes)

## Folding

Every text (or source code) has a certain structure. If you have a structure, it
means you have regions of logically separated text. Folding allows to "fold"
such a region into a single line and displaying a short description. There are
many commands that act on these regions called _folds_. Folds can be nested.

Vim distinguishes between several types of fold methods:

| 'foldmethod' | Usage |
|--------------|-------|
| diff         | Used in diff windows to fold unchanged text. |
| expr         | Uses `'foldexpr'` to basically create a new fold method. |
| indent       | Folds based on indentation. |
| manual       | Create folds yourself via `zf`, `zF`, and `:fold`. |
| marker       | Folds based on markers in the text (often in comments). |
| syntax       | Folds based on syntax, e.g. folding `if` blocks. |

**NOTE**: Folding can be computationally intensive! If you experience any
performance drawbacks (small delays when typing), have a look at
[FastFold](https://github.com/Konfekt/FastFold), which prevents Vim from
updating folds when it's not needed.

Help:

```
:h usr_28
:h folds
```

## Sessions

If you save a **view** (`:h :mkview`), the current state of the window (and
options and mappings) gets saved for later use (`:h :loadview`).

A **session** saves the views of all windows plus global settings. It basically
makes a snapshot of your current Vim instance and saves it in a session file.
Let me stress this: it saves the current state; everything done after saving a
session won't be part of the session file. To "update" a session, simply write
it out again.

This makes it perfect for saving your _projects_ and easy to switch between
them.

Try it right now! Open a few windows and tabs and do `:mksession Foo.vim`. If
you omit the filename, `Session.vim` will be assumed. The file will be saved to
the current working directory, check `:pwd`. Restart Vim and do `:source
Foo.vim` and voilà, the buffer list, window layout, mappings, working directory
etc. should all be the same as before you saved the session. Do some more work
and update the session by overwriting the already existing session file with
`:mksession! Foo.vim`.

Note that a session file is really just a collection of Vim commands that are
supposed to restore a certain state of a Vim instance, so feel free to take a
look at it: `:vs Foo.vim`.

You can tell Vim what things to save in a session by setting `'sessionoptions'`.

For scripting purposes Vim keeps the name of the last sourced or written session
in the internal variable `v:this_session`.

Help:

```
:h Session
:h 'sessionoptions'
:h v:this_session
```

## Locality

Many of the concepts mentioned above also have _local_ counterparts:

| Global | Local | Scope | Help |
|--------|-------|-------|------|
| `:set`     | `:setlocal`           | buffer or window | `:h local-options`    |
| `:map`     | `:map <buffer>`       | buffer           | `:h :map-local`       |
| `:autocmd` | `:autocmd * <buffer>` | buffer           | `:h autocmd-buflocal` |
| `:cd`      | `:lcd`                | window           | `:h :lcd`             |
| `<leader>` | `<localleader>`       | buffer           | `:h maplocalleader`   |

[Variables also have different scopes](https://vimhelp.appspot.com/usr_41.txt.html#41.2).

# Usage

## Getting help offline

Vim comes with great documentation in the form of single text files with a
special layout. Vim uses a system based on tags for accessing certain parts of
those help files.

First of all, read this: `:help :help`. This will open the file
`$VIMRUNTIME/doc/helphelp.txt` in a new window and jump to the `:help` tag
within that file.

A few simple rules:

- options are enclosed in single quotes, e.g. `:h 'textwidth'`
- VimL functions end in `()`, e.g. `:h reverse()`
- commands start with `:`, e.g. `:h :echo`

You can use `<c-d>` (this is <kbd>ctrl</kbd>+<kbd>d</kbd>) to list all tags that
match the currently entered query. E.g. `:h tab<c-d>` will get you a list of all
tags from `tab` over `'softtabstop'` to `setting-guitablabel`.

You want to list all VimL functions? Simple: `:h ()<c-d>`. You want to list all
VimL functions that concern windows? `:h win*()<c-d>`.

This quickly becomes second nature, but especially in the beginning, you
sometimes don't know any part of the tag you are looking for. You can only
imagine some keywords that could be involved. `:helpgrep` to the rescue!

```
:helpgrep backwards
```

This will look for "backwards" in all documentation files and jump to the first
match. The matches will be assembled in the quickfix list. Use `:cn`/`:cp` to
jump to the next/previous match. Or use `:copen` to open the quickfix window,
navigate to an entry and hit `<cr>` to jump to that match. See `:h quickfix` for
the whole truth.

## Getting help offline (alternative)

This list was compiled by @chrisbra, one of the most active Vim developers, and
posted to [vim_dev](https://groups.google.com/forum/#!forum/vim_dev).

It's reposted here with minor changes.

---

If you know what you are looking for, it is usually easier to search for it
using the help system, because the subjects follow a certain style guide.

Also, the help has the advantage of belonging to your particular Vim version, so
that obsolete topics or topics that have been added later won't turn up.

Therefore, it is essential to learn the help system and the language it uses.
Here are some examples (not necessarily complete and I might have forgotten
something).

1. Options are enclosed in single quotes. So you would use `:h 'list'` to go to
   the help topic for the list option. If you only know, you are looking for a
   certain option, you can also do `:h options.txt` to open the help page which
   describes all option handling and then you can search using regular
   expressions e.g. `/width`. Certain options have their own namespace, e.g. `:h
   cpo-a`, `:h cpo-A`, `:h cpo-b`, and so on.

2. Normal mode commands are just that. Use `:h gt` to go to the help page for
   the "gt" command.

3. Regexp items always start with "/", so `:h /\+` takes you to the help item
   for the "\+" quantifier in Vim regexes. If you need to know anything about
   regular expressions, start reading at `:h pattern.txt`.

4. Key combinations. They usually start with a single letter indicating the mode
   for which they can be used. E.g. `:h i_CTRL-X` takes you to the family of
   CTRL-X commands for insert mode which can be used to auto complete different
   things. Note that certain keys will always be written the same, e.g. Control
   will always be CTRL. Note, for normal mode commands, the "n" is left away,
   e.g. `:h CTRL-A`. In contrast, `:h c_CTRL-R` will describe what CTRL-R does
   when entering commands in the command line and `:h v_Ctrl-A` talks about
   incrementing numbers in visual mode and `:h g_CTRL-A` talks about the g<C-A>
   command (thus you have to press "g" then <Ctrl-A>). Here the "g" stand for
   the normal command "g" which always expect a second key before doing
   something similar to the commands starting with "z".

5. Registers always start with "quote" so use `:h quote` to find out about the
   special ":" register.

6. Vim script (VimL) is available at `:h eval.txt`. Certain aspects of the
   language are available at `:h expr-X` where 'X' is a single letter, e.g. `:h
   expr-!` will take you to the topic describing the '!' (Not) operator for
   VimL. Also important, see `:h function-list` to find a short description of
   all functions available.

7. Mappings are talked about in the help page `:h map.txt`. Use `:h mapmode-i`
   to find out about the `:imap` command. Also use `:map-topic` to find out
   about certain subtopics particular for mappings (e.g. `:h :map-local` for
   buffer-local mappings or `:h map_bar` for how the '|' is handled in mappings.

8. Command definitions are talked about at `:h command-*`, so use :h command-bar
   to find out about the '!' argument for custom commands.

9. Window management commands always start with CTRL-W, so you find the
   corresponding help at `:h CTRL-W_*` (e.g. `:h CTRL-W_p` for switch to the
   previously accessed window). You can also access `:h windows.txt` and read
   your way through, if you are looking for window handling command.

10. Ex commands always start with ":", so `:h :s` covers the ":s" command.

11. Use CTRL-D after typing a topic and let Vim try to complete to all available
    topics.

12. Use `:helpgrep` to search in all help pages (usually also includes help
    pages by installed plugins). See `:h :helpgrep` for how to use it. Once you
    have searched for a topic, all matches are available in the quickfix (or
    location) window which can be opened with `:copen` or `:lopen`. There you
    can also use `/` to further filter the matches.

13. `:h helphelp` contains some information on how to use the help.

14. The user manual. This describes help topics for beginners in a rather
    friendly way. Start at `:h usr_toc.txt` to find the table of content (as you
    might have guessed). Skimming over that help to find certain topics, .e.g
    you will find an entry "Digraphs" and "Entering special characters" in
    chapter 24 (so use `:h usr_24.txt` to go to that particular help page).

15. Highlighting groups always start with `hl-*`. E.g. `:h hl-WarningMsg` talks
    about the "WarningMsg" highlighting group.

16. Syntax highlighting is namespaced to ":syn-topic", e.g. `:h :syn-conceal`
    talks about the conceal argument for the :syn command.

17. Quickfix commands usually start with ":c", while location list commands
    usually start with ":l".

18. `:h BufWinLeave` talks about the BufWinLeave autocmd. Also, `:h
    autocommands-events` talks about all possible events.

19. Startup arguments always start with "-", so `:h -f` takes you to the help of
    the "-f" command switch of Vim.

20. Compiled extra features always start with "+", so `:h +conceal` talks about
    the conceal support.

21. Error codes can be looked up directly in the help. `:h E297` takes you
    exactly to the description of the error message. Sometimes however, those
    error codes are not described, but rather are listed at the Vim command that
    usually causes this. E.g. `:h hE128` takes you directly to the `:function`
    command.

22. Documentation for included syntax files is usually available at `:h
    ft-*-syntax`. E.g. `:h ft-c-syntax` talks about the C syntax file and the
    options it provides. Sometimes, additional sections for omni completion (`:h
    ft-php-omni`) or filetype plugins (`:h ft-tex-plugin`) are available.

Also, a link to the user documentation (which describes certain commands more
from a user perspective and less detailed) will be mentioned at the top of help
pages if they are available. So `:h pattern.txt` mentions the user guide topics
`:h 03.9` and `:h usr_27`.

## Getting help online

If you have an issue you can't resolve or are in need of general guidance, see
the [vim_use](https://groups.google.com/forum/#!forum/vim_use) mailing list.
Another great resource is using
[IRC](https://de.wikipedia.org/wiki/Internet_Relay_Chat). The channel `#vim` on
[Freenode](https://freenode.net) is huge and usually full of helpful people.

If you want to report a Vim bug, use the
[vim_dev](https://groups.google.com/forum/#!forum/vim_dev) mailing list.

## Autocmds in practice

You can trigger any event right now: `:doautocmd BufRead`.

### User events

Especially for plugins it's useful to create your own "User" events:

```vim
function! Chibby()
  " A lot of stuff is happening here.
  " And at last..
  doautocmd User ChibbyExit
endfunction
```

Now users of your plugin can execute anything when Chibby finishes running:

```vim
autocmd User ChibbyExit call ChibbyCleanup()
```

By the way, if there's no "catching" :autocmd, :doautocmd will output a pesky
"No matching autocommands" message. That's why many plugins use `silent
doautocmd ...` instead. But this has the disadvantage, that you can't simply use
`echo "foo"` in the :autocmd, you have to use `unsilent echo "foo"` instead..

That's why it's better to check if there even is a receiving autocmd and not
bothering emitting the event otherwise:

```vim
if exists('#User#ChibbyExit')
  doautocmd User ChibbyExit
endif
```

Help: `:h User`

### Nested autocmds

By default, autocmds do not nest! If an autocmd executes a command, which in
turn would usually trigger another event, it won't happen.

Let's say every time you start Vim, you want to automatically open your vimrc:

```vim
autocmd VimEnter * edit $MYVIMRC
```

When you now start Vim, it will open your vimrc, but the first thing you'll
notice is that there won't be any highlighting although usually there would be.

The problem is that `:edit` in your non-nested autocmd won't trigger the
"BufRead" event, so the filetype never gets set to "vim" and
`$VIMRUNTIME/syntax/vim.vim` never sourced. See `:au BufRead *.vim`. Use this
instead:

```vim
autocmd VimEnter * nested edit $MYVIMRC
```

Help: `:h autocmd-nested`

## Clipboard

Required [features](#what-kind-of-vim-am-i-running): `+clipboard` and optionally
`+xterm_clipboard` if you want to use the `'clipboard'` option on a Unix system
with a Vim that doesn't have GUI support.

Help:

```
:h 'clipboard'
:h gui-clipboard
:h gui-selections
```

Also see: [Bracketed paste (or why do I have to set 'paste' all the
time?)](#bracketed-paste-or-why-do-i-have-to-set-paste-all-the-time)

### Clipboard usage (Windows, macOS)

Windows comes with a
[clipboard](https://msdn.microsoft.com/en-us/library/windows/desktop/ms649012(v=vs.85).aspx)
and macOS comes with a
[pasteboard](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/PasteboardGuide106/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008100-SW1).

Both work like most users would expect them to work. You copy selected text with
`ctrl+c`/`cmd+c` and paste them in another application with `ctrl+v`/`cmd+v`.

Note that copied text is actually transferred to the clipboard, so you can close
the application you copied from before pasting in another application without
problems.

Whenever this happens, the clipboard register `*` gets filled with the
selection. From Vim use `"*y` and `"*p` to yank and paste from the clipboard
respectively.

If you don't even want to specify the `*` register all the time, put this in
your vimrc:

```vim
set clipboard=unnamed
```

Usually all yank/delete/put operations fill the `"` register, now the `*`
register is used for the same operations, therefore simply `y` and `p` will be
enough.

Let me repeat: Using the option above means that every yank/paste, even when
only used in the same Vim window, will alter the clipboard. Decide for yourself
if this is useful or not.

If you're even too lazy to type `y`, you can send every visual selection to the
clipboard by using these settings:

```vim
set clipboard=unnamed,autoselect
set guioptions+=a
```

Help:

```
:h clipboard-unnamed
:h autoselect
:h 'go_a'
```

### Clipboard usage (Linux, BSD, ...)

If your OS uses [X](http://www.x.org/wiki), things work a bit different. X
implements the [X Window System
Protocol](http://www.x.org/releases/X11R7.7/doc/xproto/x11protocol.html) which
happens to be at major version 11 since 1987, hence X is also often called X11.

Prior, in X10, [cut
buffers](http://www.x.org/releases/X11R7.7/doc/xorg-docs/icccm/icccm.html#Peer_to_Peer_Communication_by_Means_of_Cut_Buffers)
were introduced that kind of worked like a _clipboard_ as in copied text was
actually held by X and it was accessible by all other applications. This
mechanism still exists in X, but its use is deprecated now and most software
doesn't use it anymore.

Nowadays data is transferred between applications by the means of
[selections](http://www.x.org/releases/X11R7.7/doc/xorg-docs/icccm/icccm.html#Peer_to_Peer_Communication_by_Means_of_Selections).
From the 3 _selection atoms_ defined, only 2 are used in practice: PRIMARY and
CLIPBOARD.

Selections work roughly like this:

```
Program A: <ctrl+c>
Program A: assert ownership of CLIPBOARD
Program B: <ctrl+v>
Program B: note that ownership of CLIPBOARD is hold by Program A
Program B: request data from Program A
Program A: respond to request and send data to Program B
Program B: receives data from Program A and inserts it into the window
```

| Selection | When used? | How to paste? | How to access from Vim? |
|-----------|------------|---------------|-------------------------|
| PRIMARY   | Selecting text              | `middle-click`, `shift+insert` | `*` register |
| CLIPBOARD | Selecting text and `ctrl+c` | `ctrl+v`                       | `+` register |

**NOTE**: Selections (no, not even the CLIPBOARD selection) are never kept in
the X server! Thus, you lose the data copied with `ctrl+c` when the application
closes.

Use `"*p` to paste the PRIMARY selection or `"+y1G` to yank the entire file to
the CLIPBOARD selection.

If you happen to access one of the two registers all the time, consider using:

```vim
set clipboard^=unnamed      " * register
" or
set clipboard^=unnamedplus  " + register
```

(The `^=` is used to prepend to the default value, `:h :set^=`.)

This will make all yank/delete/put operations use either `*` or `+` instead of
the unnamed register `"`. Afterwards you can simply use `y` or `p` for accessing
your chosen X selection.

Help:

```vim
:h clipboard-unnamed
:h clipboard-unnamedplus
```

## Restore cursor position when opening file

When you open a file, the cursor will be positioned at line 1, column 1.
Fortunately the viminfo file remembers [marks](#marks). The `"` mark contains
the position in the buffer where you left off.

```vim
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif
```

Read: If the mark `"` contains a line number greater than line 1 but not greater
than the last line in the file, jump to it.

    :h viminfo-'
    :h `quote
    :h g`

## Temporary files

### Backup files

Before saving a file, Vim creates a backup file. If writing to disk was
successful, the backup file will be deleted.

With `:set backup`, the backup will persist. This means, the backup file will
always have the same content as the original file _before_ the most recent save.
It's up to you to decide whether this is useful or not.

You can disable backups entirely with `:set nobackup nowritebackup`, but you
shouldn't need to nowadays. `'writebackup'` is a security feature that makes
sure that you don't lose the original file in case saving it should ever fail,
no matter whether you keep the backup file afterwards or not.

If you frequently use Vim to edit huge files, [and you probably
shouldn't](#editing-huge-files-is-slow), you can exclude those from backups with
`'backupskip'`.

Vim knows different ways to create a backup: _copying_ and _renaming_.

- **Copying**
    1. A full copy of the original file is created and used as backup.
    1. The original file gets emptied and then filled with the content of the
    Vim buffer.
- **Renaming**
    1. The original file is renamed to the backup file.
    1. The content of the Vim buffer gets written to a new file with the name of
    the original file.

See `:h 'backupcopy'` for all the nitty-gritty details.

---

Demo:

```vim
:set backup backupskip= backupdir=. backupext=-backup
:e /tmp/foo
ifoo<esc>
:w
" original file gets created, no need for backup file
obar<esc>
:w
" backup file is created, original file gets updated
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

### Swap files

When editing a file, unsaved changes get written to a swap file.

Get the name of the current swap file with `:swapname`. Disable them with `:set
noswapfile`.

A swap file gets updated either all 200 characters or when nothing was typed for
4 seconds. They get deleted when you stop editing the file. You can change these
numbers with `:h 'updatecount'` and `:h 'updatetime'`.

If Vim gets killed (e.g. power outage), you lose all changes since the last time
the file was written to disk, but the swap file won't be deleted. Now, if you
edit the file again, Vim will offer the chance to recover the file from the swap
file.

When two people try to edit the same file, the second person will get a notice
that the swap file already exists. It prevents people from trying to save
different versions of a file. If you don't want that behaviour, see `:h
'directory'`.

    :h swap-file
    :h usr_11

### Undo files

The [undo tree](#undo-tree) is kept in memory and will be lost when Vim quits.
If you want it to persist, `:set undofile`. This will save the undo file for
`~/foo.c` in `~/foo.c.un~`.

    :h 'undofile'
    :h undo-persistence

### Viminfo files

When backup, swap, and undo files are all about text state, viminfo files are
used for saving everything else that would otherwise be lost when quitting Vim.
The viminfo file keeps histories (command line, search, input), registers,
marks, buffer list, global variables etc.

By default, the viminfo is written to `~/.viminfo`.

    :h viminfo
    :h 'viminfo'

### Example configuration for temporary files

Put all temporary files in their own directory under `~/.vim/files`:

```vim
" create directory if needed
if !isdirectory($HOME.'/.vim/files') && exists('*mkdir')
  call mkdir($HOME.'/.vim/files')
endif

" backup files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
" swap files
set directory   =$HOME/.vim/files/swap//
set updatecount =100
" undo files
set undofile
set undodir     =$HOME/.vim/files/undo/
" viminfo files
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
```

## Editing remote files

Vim comes with the netrw plugin that enables editing remote files. Actually it
transfers the remote file to a local temporary file via scp, opens a buffer
using that file, and writes the changes back to the remote file on saving.

This is extremely useful if you want to use your local configuration opposed to
ssh'ing into a server and use whatever the admins want you to use.

```
:e scp://bram@awesome.site.com/.vimrc
```

If you have a `~/.ssh/config` set up already, this gets used automatically:

```
Host awesome
    HostName awesome.site.com
    Port 1234
    User bram
```

Assuming the above content in `~/.ssh/config`, this works just as well:

```
:e scp://awesome/.vimrc
```

Similar can be done with a `~/.netrc`, see `:h netrw-netrc`.

Make sure to read `:h netrw-ssh-hack` and `:h g:netrw_ssh_cmd`.

---

Another possibility is using [sshfs](https://wiki.archlinux.org/index.php/Sshfs)
which uses [FUSE](https://en.wikipedia.org/wiki/Filesystem_in_Userspace) to
mount a remote filesystem into your local filesystem.

## Managing plugins

[Pathogen](https://github.com/tpope/vim-pathogen) was the first popular tool for
managing plugins. Actually it just adjusts the _runtimepath_ (`:h 'rtp'`) to
include all the things put under a certain directory. You have to clone the
repositories of the plugins there yourself.

Real plugin managers expose commands that help you to install and update plugins
from within Vim.

[List of plugin managers](PLUGINS.md#plugin-managers)

## Block insert

This is a technique to insert the same text on multiple consecutive lines at the
same time. See this
[demo](https://raw.githubusercontent.com/mhinz/vim-galore/master/static/images/content-block_insert.gif).

Switch to visual block mode with `<c-v>`. Afterwards go down for a few lines.
Hit `I` or `A` and start entering your text.

It might be a bit confusing at first, but text is always entered for the current
line and only after finishing the current insertion, the same text will be
applied to all other lines of the prior visual selection.

So a simple example is `<c-v>3jItext<esc>`.

If you have lines of different length and want to append the same text right
after the end of each line, do this: `<c-v>3j$Atext<esc>`.

Sometime you need to place the cursor somewhere after the end of the current
line. You can't do that by default, but you can set the `virtualedit` option:

```vim
set virtualedit=all
```

Afterwards `$10l` or `90|` work even after the end of the line.

See `:h blockwise-examples` for more info. It might seem complicated at first,
but quickly becomes second nature.

If you want to get real fancy, have a look at
[multiple-cursors](https://github.com/terryma/vim-multiple-cursors).

## Running external programs and using filters

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
