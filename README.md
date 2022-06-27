<div align='center'>
  <br /><br /><br />
  <img src='./static/images/logo-vim-galore.png' alt='vim-galore logo' />
  <br /><br /><br /><br />
  <div>
    <a href="https://github.com/mhinz/vim-galore">Inglés</a>
    <a>|</a>
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

### [Introducción](#introducción-1)

- [¿Qué es Vim?](#¿qué-es-vim)
- [La Filosofía de Vim](#la-filosofía-de-vim)
- [Primeros pasos](#primeros-pasos)
- [Vimrc mínimo](#vimrc-mínimo)
- [¿Qué tipo de Vim estoy utilizando?](#¿qué-tipo-de-vim-estoy-utilizando)
- [Cheatsheets](#cheatsheets)

### [Conceptos Básicos](#conceptos-básicos-1)

- [Buffers, ventanas, pestañas](#búfers-ventanas-pestañas)
- [Buffers activados, cargados, listados, y nombrados](#búfers-activados-cargados-listados-y-nombrados)
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

### [Utilización](#utilización-1)

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
- [Verdaderos colores (True colors)](#verdaderos-colores-true-colors)

### [Tips](#tips-1)

- [Ir al otro extremo del texto seleccionado](#ir-al-otro-extremo-del-texto-seleccionado)
- [Comportamiento más sano de n y N](#comportamiento-más-sano-de-n-y-n)
- [Uso más sano del historial de la línea de comandos](#uso-más-sano-del-historial-de-la-línea-de-comandos)
- [Uso más sano del CTRL-L](#uso-más-sano-del-ctrl-l)
- [Desactivar los timbres sonoros y visuales](#desactivar-los-timbres-sonoros-y-visuales)
- [Mover rápidamente la línea actual](#mover-rápidamente-la-línea-actual)
- [Añadir rápidamente líneas vacías](#añadir-rápidamente-líneas-vacías)
- [Edite rápidamente sus macros](#edite-rápidamente-sus-macros)
- [Saltar rápidamente a la cabecera o al archivo fuente](#saltar-rápidamente-a-la-cabecera-o-al-archivo-fuente)
- [Cambiar rápidamente el tamaño de la fuente en la interfaz gráfica de usuario](#cambiar-rápidamente-el-tamaño-de-la-fuente-en-la-interfaz-gráfica-de-usuario)
- [Cambiar el estilo del cursor en función del modo](#cambiar-el-estilo-del-cursor-en-función-del-modo)
- [No perder la selección al cambiar de lado](#no-perder-la-selección-al-cambiar-de-lado)
- [Recargar un archivo al guardar](#recargar-un-archivo-al-guardar)
- [Cursor más inteligente](#cursor-más-inteligente)
- [Completación más rapida de palabras claves](#completación-más-rapida-de-palabras-claves)
- [Cambios cosméticos a los esquemas de color](#cambios-cosméticos-a-los-esquemas-de-color)

### [Comandos](#comandos-1)

- [:global y :vglobal](#global-y-vglobal) - Ejecutar un comando en todas las líneas coincidentes.
- [:normal y :execute](#normal-y-execute) - El dream team de los guiones.
- [:redir y execute()](#redir-y-execute) - Capturar la salida del comando.

### [Depuración](#depuración-1)

- [Tips generales](#tips-generales)
- [Verbosidad (Comando `verbose`)](#verbosidad)
- [Perfilando el tiempo de inicio](#perfilando-el-tiempo-de-inicio)
- [Perfilando en tiempo de ejecución](#perfilando-en-tiempo-de-ejecución)
- [Depurando los scripts Vim](#depurando-los-scripts-vim)
- [Depurando archivos de sintaxis](#depurando-archivos-de-sintaxis)

### [Miscelánea](#miscelánea-1)

- [Recursos adicionales](#recursos-adicionales)
- [Distribucciones de Vim](#distribuciones-de-vim)
- [Plugins standard](#plugins-standard)
- [Mapear CapsLock a Control](#mapear-capslock-a-control)
- [Generar HTML del buffer](#generar-html-del-buffer)
- [Easter eggs](#easter-eggs)
- [¿Por qué hjkl para la navegación?](#¿por-qué-hjkl-para-la-navegación)

### [Problemas comunes](#problemas-comunes-1)

- [La edición de archivos pequeños es lenta](#la-edición-de-archivos-pequeños-es-lenta)
- [La edición de archivos grandes es lenta](#la-edición-de-archivos-grandes-es-lenta)
- [Pegar entre corchetes (o ¿por qué tengo que poner "pegar" todo el tiempo?)](#pegar-entre-corchetes-o-¿por-qué-tengo-que-poner-pegar-todo-el-tiempo)
- [Retrasos al utilizar la tecla de escape en el terminal](#retrasos-al-utilizar-la-tecla-de-escape-en-el-terminal)
- [Deshacer función de busqueda (function-search-undo)](#deshacer-función-de-busqueda-function-search-undo)

### [Peculiaridades técnicas](#peculiaridades-técnicas-1)

- [Nueva linea utilizada para NUL](#nueva-linea-utilizada-para-nul)

### [Terminología](#terminología-1)

- [Vim script? Vimscript? VimL?](#vim-script-vimscript-viml)

### [Lista de esquemas de colores](PLUGINS.md#colorschemes-1)

### [Lista de plugins](PLUGINS.md)

<br>

# Introducción

## ¿Qué es Vim?

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

## Búfers activados, cargados, listados, y nombrados

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

Nota: Vim es de síncrono de un solo hilo, por lo que la ejecución de un programa externo en primer plano bloqueará todo lo demás. Claro, puedes usar una de las interfaces de programación de Vim, por ejemplo Lua, y usar su soporte de hilos asíncrono, pero durante ese tiempo el proceso de Vim se bloquea de todas formas. Neovim ha solucionado esto añadiendo una API de trabajo adecuada.

(Al parecer, Bram está pensando en añadir el control de trabajos a Vim también. Si tiene una versión muy reciente, vea `:helpgrep startjob`).

Utilice `:!` para iniciar un trabajo. Si quieres listar los archivos en el directorio de trabajo actual, usa `:!ls`. Utilice `|` para canalizar en el shell como de costumbre, por ejemplo, `:!ls -1 | sort | tail -n5`.

Sin un rango, la salida de `:!` se mostrará en una ventana desplazable. Por otro lado, si se da un rango, estas líneas serán [filtradas](https://es.wikipedia.org/wiki/Filtro_(programa)). Esto significa que serán enviadas al [stdin](https://es.wikipedia.org/wiki/Entrada_est%C3%A1ndar) del programa de filtrado y después de procesarlas serán reemplazadas por el [stdout](https://es.wikipedia.org/wiki/Entrada_est%C3%A1ndar) del filtro. Por ejemplo, para añadir números a las 5 líneas siguientes, utilice esto:


    :.,+4!nl -ba -w1 -s' '

Como añadir manualmente el rango es bastante pesado, Vim también proporciona algunos ayudantes para mayor comodidad. Como siempre con los rangos, también puedes seleccionar líneas en modo visual y luego pulsar `:`. También hay un operador `!` que toma un movimiento. Por ejemplo, `!ip!sort` ordenará las líneas del párrafo actual.


Un buen caso de uso para el filtrado es el [lenguaje de programación Go](https://golang.org). La indentación es bastante opinable, incluso viene con un filtro llamado `gofmt` para indentar el código fuente Go correctamente. Así que los plugins para Go a menudo proporcionan comandos de ayuda llamados `:Fmt` que básicamente hacen `:%!gofmt`, por lo que indentan todas las líneas del archivo.

La gente suele usar `:r !prog` para poner la salida de prog debajo de la línea actual, lo que está bien para los scripts, pero cuando se hace sobre la marcha, me parece más fácil usar `!!ls` en su lugar, que reemplaza la línea actual.


    :h filter
    :h :read!

## Cscope

[Cscope](http://cscope.sourceforge.net/) hace más cosas que [ctags](http://ctags.sourceforge.net/), pero sólo soporta C (y C++ y Java hasta cierto punto).

Mientras que un archivo de etiquetas sólo sabe dónde se definió un símbolo, una base de datos de cscope sabe mucho más sobre sus datos:

- ¿Dónde está definido este símbolo?
- ¿Dónde se utiliza este símbolo?
- ¿Cuál es la definición de este símbolo global?
- ¿Dónde obtuvo esta variable su valor?
- ¿Dónde está esta función en los archivos fuente?
- ¿Qué funciones llaman a esta función?
- ¿Qué funciones son llamadas por esta función?
- ¿De dónde viene el mensaje "out of space"?
- ¿Dónde se encuentra este fichero fuente en la estructura de directorios?
- ¿Qué archivos incluyen este archivo de cabecera?

### 1. Crear la base de datos

Hazlo en la base (root) de tu proyecto:

```sh
$ cscope -bqR
```

Esto creará 3 archivos: `cscope{,.in,.po}.out` en el directorio de trabajo actual. Piense en ellos como su base de datos.

Desafortunadamente, `cscope` sólo analiza archivos `*.[c|h|y|l]` por defecto. Si quieres usar cscope para un proyecto Java en su lugar, haz esto:

```sh
$ find . -name "*.java" > cscope.files
$ cscope -bq
```

### 2. Agrega la base de datos

Abra una conexión con su base de datos recién creada:

```vim
:cs add cscope.out
```

Compruebe que la conexión se ha realizado:

```vim
:cs show
```

(Sí, puedes añadir varias conexiones).

### 3. Consulta la base de datos

```vim
:cs find <kind> <query>
```

Por ejemplo, `:cs find d foo` listará todas las funciones que son llamadas por `foo(...)`.

| Tipo | Explicación |
|------|-------------|
| s    | **s**ímbolo: encuentra todas las referencias al token        |
| g    | **g**lobal: encontrar la(s) definición(es) global(es) del token  |
| c    | **c**alls o llamadas: encuentra todas las llamadas a la función           |
| t    | **t**exto: encuentra todas las instancias del texto            |
| e    | **e**grep: búsqueda egrep para la palabra                |
| f    | **f**ile o arhivo: abre el nombre del archivo                         |
| i    | **i**ncluye: busca archivos que incluyan el nombre del archivo  |
| d    | **d**epende de: encuentra funciones llamadas por esta función |

Sugiero algunos mapeos de conveniencia, por ejemplo:

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

Así, cuando `:tag` (o `<c-]>`) salta a una definición del fichero de etiquetas, `:cstag` hace lo mismo, pero también tiene en cuenta las bases de datos cscope conectadas. La opción `'cscopetag` hace que :tag actúe como `:cstag` automáticamente. Esto es muy conveniente si ya tienes mapeos relacionados con las etiquetas.

Comando help: `:h cscope`

## MatchIt

Dado que Vim está escrito en C, muchas funciones asumen una sintaxis similar a la de C. Por defecto, si tu cursor está en `{` o `#endif`, puedes usar `%` para saltar al correspondiente `}` o `#ifdef` respectivamente.

Vim viene con un plugin llamado _matchit.vim_ que no está activado por defecto. Hace que `%` también recorra las etiquetas HTML, las construcciones if/else/endif en VimL, etc. e introduce algunos comandos nuevos.

#### Instalación para Vim 8

```vim
" vimrc
packadd! matchit
```

#### Instalación para Vim 7 y anteriores

```vim
" vimrc
runtime macros/matchit.vim
```

Dado que la documentación de matchit es bastante extensa, sugiero hacer también lo siguiente una vez:

```vim
:!mkdir -p ~/.vim/doc
:!cp $VIMRUNTIME/macros/matchit.txt ~/.vim/doc
:helptags ~/.vim/doc
```

#### Pequeña introducción

El plugin está listo para ser utilizado. Vea `:h matchit-intro` para los comandos soportados y `:h matchit-languages` para los idiomas soportados.

Dicho esto, es fácil definir sus propios pares de correspondencia:

```vim
autocmd FileType python let b:match_words = '\<if\>:\<elif\>:\<else\>'
```

Después puedes recorrer estas 3 sentencias en cualquier archivo de Python usando `%` (hacia adelante) o `g%` (hacia atrás).

Comando help:

```
:h matchit-install
:h matchit
:h b:match_words
```

## Verdaderos colores (True colors)

Utilizar colores reales en un emulador de terminal significa poder utilizar 24 bits para los colores RGB. Eso hace 16777216 (2^24) colores en lugar de los 256 habituales.

Como se explica [aquí](#esquema-de-colores), los esquemas de colores pueden ser en realidad _dos_ esquemas de colores al tener definiciones para terminales (xterm) y para GUIs (gvim). Esto tenía sentido antes de que los emuladores de terminal conocieran los colores reales.

Después de `:set termguicolors`, Vim comienza a emitir secuencias de escape sólo entendidas por un emulador de terminal que soporte colores verdaderos. Cuando sus colores se ven extraños, es probable que su emulador de terminal no soporte colores verdaderos o que su esquema de colores no tenga definidos los colores de la interfaz gráfica de usuario.

Mucha gente utiliza el multiplexor de terminal [tmux](https://github.com/tmux/tmux/wiki) que básicamente se sitúa entre el emulador de terminal y Vim. Para hacer que tmux _reenvíe_ las secuencias de escape de color verdadero emitidas por Vim, tienes que poner lo siguiente en el `.tmux.conf` del usuario:

```
set-option -g  default-terminal 'tmux-256color'
set-option -ga terminal-overrides ',xterm-256color:Tc'
```

- La primera línea debería ser la misma para la mayoría de la gente y denota el `$TERM` a utilizar _dentro_ de tmux.
- La segunda línea añade la capacidad `Tc` (color verdadero) específica de tmux a las otras entradas terminfo de `xterm-256color`. Obviamente esto asume que el usuario está usando `TERM=xterm-256color` fuera de tmux.

Por lo tanto, aquí está la lista de verificación para habilitar los verdaderos colores:

- Lee `:h 'termguicolors'`.
- Ponga `set termguicolors` en tu vimrc.
- Asegúrese de que su esquema de colores tiene definiciones de color para las interfaces gráficas de usuario. (Debería contener líneas con `guifg` y `guibg`).
- Asegúrate de que tu emulador de terminal elegido soporta colores reales.
- ¿Usas tmux? Configúralo para añadir la capacidad `Tc`.

Una referencia popular para los colores en el terminal:
https://gist.github.com/XVilka/8346728 (Link en inglés)

# Tips

## Ir al otro extremo del texto seleccionado

`o` y `O` en una selección visual hacen que el cursor vaya al otro extremo. Pruebelo con la selección en sentido de bloques para ver la diferencia. Esto es útil para cambiar rápidamente el tamaño del texto seleccionado.

```
:h v_o
:h v_O
```

## Comportamiento más sano de n y N

La dirección de `n` y `N` depende de si se ha utilizado `/` o `?` para buscar hacia delante o hacia atrás respectivamente. Esto es bastante confuso para mí.

Si quieres que `n` busque siempre hacia adelante y `N` hacia atrás, usa esto:

```vim
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]

nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]
```

## Uso más sano del historial de la línea de comandos

Si eres como yo, estás acostumbrado a ir a los elementos siguientes y anteriores mediante `<c-n>` y `<c-p>` respectivamente. Por defecto, esto también funciona en la línea de comandos y recuerda las líneas de comandos más antiguas o más recientes del historial.

Hasta aquí, todo bien. Pero `<up>` (arriba) y `<down>` (down) son aún más inteligentes. Recuperan la línea de comandos cuyo comienzo coincide con la línea de comandos actual. Por ejemplo, `:echo <up>` puede cambiar a `:echo "¡Vim mola!"`.

Por supuesto, no quiero que busque las teclas de dirección:

```vim
cnoremap <expr> <c-n> wildmenumode() ? "\<c-n>" : "\<down>"
cnoremap <expr> <c-p> wildmenumode() ? "\<c-p>" : "\<up>"
```

Aquí también distinguimos entre el historial de la línea de comandos y el menú comodín. Vea `:h 'wildmenu'`.

Yo dependo de este comportamiento varias veces al día.

## Uso más sano del CTRL-L

Por defecto, `<c-l>` borra y redibuja la pantalla (como `:redraw!`). El siguiente mapeo hace lo mismo, además de des-destacar las coincidencias encontradas a través de `/`, `?` etc., además de arreglar el resaltado de sintaxis (a veces Vim pierde el resaltado debido a las complejas reglas de resaltado), además de forzar la actualización del resaltado de sintaxis en el modo diff:

```vim
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>
```

## Desactivar los timbres sonoros y visuales

```vim
set noerrorbells
set novisualbell
set t_vb=
```

Vea [Vim Wiki: Desactivar el pitido](http://vim.wikia.com/wiki/Disable_beeping).

## Mover rápidamente la línea actual

A veces necesito una forma rápida de mover la línea actual por encima o por debajo:

```vim
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>
```

Estos mapeos también toman un conteo, así que `2]e` mueve la línea actual 2 líneas abajo.

## Añadir rápidamente líneas vacías

```vim
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
```

Ahora `5[<espacio>` inserta 5 líneas en blanco sobre la línea actual.

## Edite rápidamente sus macros

¡Esta es una verdadera joya! El mapeo toma un registro (o `*` por defecto) y lo abre en la ventana de cmdline. Pulsa `<cr>` cuando termines de editar para fijar el registro.

A menudo uso esto para corregir errores de escritura que hice mientras grababa una macro.

```vim
nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>
```

Utilízalo así `<leader>m` o `"q<leader>m`.

Observe el uso de `<c-r><c-r>` para asegurarse de que el `<c-r>` se inserta literalmente. Véase `:h c_^R^R`.

## Saltar rápidamente a la cabecera o al archivo fuente

Esta técnica puede aplicarse probablemente a muchos tipos de archivos. Establece marcas de archivo (ver `:h marcas`) cuando se sale de un archivo fuente o de cabecera, de modo que se puede volver rápidamente al último al que se accedió utilizando `'C` o `'H` (ver `:h 'A`).

```vim
autocmd BufLeave *.{c,cpp} mark C
autocmd BufLeave *.h       mark H
```

**NOTA**: La información se guarda en el archivo viminfo, así que asegúrese de que `:set
viminfo?` incluya `:h viminfo-'`.

## Cambiar rápidamente el tamaño de la fuente en la interfaz gráfica de usuario

Creo que esto fue tomado de la configuración de tpope:

```vim
command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')
```

## Cambiar el estilo del cursor en función del modo

Me gusta utilizar un cursor de bloque en el modo normal, un cursor `i-beam` en el modo de inserción y un cursor de subrayado en el modo de sustitución.

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

Esto simplemente le dice a Vim que imprima una determinada secuencia de caracteres ([secuencia de escape](https://es.frwiki.wiki/wiki/S%C3%A9quence_d%27%C3%A9chappement)) al entrar/salir del modo de inserción. El terminal subyacente, o programas como [tmux](https://tmux.github.io) que se sitúan entre Vim y el terminal, lo procesarán y evaluarán.

Sin embargo, hay un inconveniente: hay muchas implementaciones de emuladores de terminal y no todas usan las mismas secuencias para hacer las mismas cosas. Las secuencias usadas arriba podrían no funcionar con tu implementación. Su implementación podría incluso no soportar diferentes estilos de cursor. Compruebe la documentación.

El ejemplo anterior funciona con iTerm2.

## No perder la selección al cambiar de lado

Si selecciona una o más líneas, puede utilizar `<` y `>` para desplazarlas hacia los lados. Desgraciadamente, se pierde inmediatamente la selección.

Puedes usar `gv` para volver a seleccionar la última selección (vea `:h gv`), por lo que puedes evitarlo así:

```vim
xnoremap <  <gv
xnoremap >  >gv
```

Ahora puede utilizar `>>>>>` en su selección visual sin problemas.

**NOTA**: Lo mismo puede conseguirse utilizando `.`, que repite el último cambio.

## Recargar un archivo al guardar

Usando los [autocmds](#autocmds) puedes hacer cualquier cosa al guardar un archivo, por ejemplo, abastecerlo en el caso de un dotfile o ejecutar un linter para comprobar si hay errores sintácticos en tu código fuente.

```vim
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost ~/.Xdefaults call system('xrdb ~/.Xdefaults')
```

## Cursor más inteligente

Me encanta la línea del cursor, pero sólo quiero usarla en la ventana actual y no cuando esté en modo de inserción:

```vim
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline
```

## Completación más rapida de palabras claves

La palabra clave de finalización (`<c-n>`/`<c-p>`) intenta completar todo lo que aparece en la opción `'complete''. Por defecto, esto también incluye las etiquetas (lo que puede ser molesto) y el escaneo de todos los archivos incluidos (lo que puede ser muy lento). Si puede vivir sin estas cosas, desactívelas:

```vim
set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags
```

## Cambios cosméticos a los esquemas de color

Utilice siempre una línea de estado gris oscuro, sea cual sea el esquema de colores elegido:

```vim
autocmd ColorScheme * highlight StatusLine ctermbg=darkgray cterm=NONE guibg=darkgray gui=NONE
```

Esto se activa cada vez que se utiliza `:colorscheme ...`. Si quieres que se active sólo para un determinado esquema de colores:

```vim
autocmd ColorScheme desert highlight StatusLine ctermbg=darkgray cterm=NONE guibg=darkgray gui=NONE
```

Esto se activa sólo para `:colorscheme desert`.

# Comandos

Comandos útiles que es bueno conocer. Utilice `:h :<nombre del comando>` para saber más sobre ellos, por ejemplo `:h :global`.

## :global y :vglobal

Ejecuta un comando en todas las líneas que coincidan. Por ejemplo, `:global /regexp/ print` utilizará `:print` en todas las líneas que contengan "regexp".

Dato curioso: Probablemente todos conocen el viejo comando grep, el programa de filtrado escrito por Ken Thompson. ¿Qué hace? Imprime todas las líneas que coinciden con una determinada expresión regular. ¿Adivina la forma corta de `:global /regexp/ print`? Sí, así es. Es `:g/re/p`. Ken Thompson se inspiró en `:global` de vi cuando escribió grep.

A pesar de su nombre, `:global` sólo actúa sobre todas las líneas por defecto, pero también toma un rango. Suponga que quiere usar `:delete` en todas las líneas desde la línea actual hasta la siguiente línea en blanco (coincidente con la expresión regular `^$`) que contengan "foo":

```vim
:,/^$/g/foo/d
```

Para ejecutar comandos en todas las líneas que _no_ coinciden con un patrón dado, utilice `:global!` o su alias `:vglobal` (piense en _inVerse_) en su lugar.

## :normal y :execute

Estos comandos se utilizan habitualmente en los scripts de Vim.

Con `:normal` puedes hacer mapeos en modo normal desde la línea de comandos. ¡Por ejemplo, `:normal! 4j` hará que el cursor baje 4 líneas (sin usar ningún mapeo personalizado para "j" debido al "!").

¡Tenga en cuenta que `:normal` también toma un [rango](#rangos), así que `:%norm! Iabc` añadiría "abc" a cada línea.

Con `:execute` puedes mezclar comandos con expresiones. Suponga que edita un fichero fuente en C y quiere pasar a su fichero de cabecera:

```vim
:execute 'edit' fnamemodify(expand('%'), ':r') . '.h'
```

Ambos comandos se utilizan a menudo juntos. Suponga que quiere hacer que el cursor baje "n" líneas:

```vim
:let n = 4
:execute 'normal!' n . 'j'
```

## :redir y execute()

Muchos comandos imprimen mensajes y `:redir` permite redirigir esa salida. Puede redirigir a archivos, [registros](#registradores) o variables.

```vim
:redir => var
:reg
:redir END
:echo var
:" Para variar, pongámoslo también en el buffer actual.
:put =var
```

En Vim 8 hay una forma aún más corta:

```vim
:put =execute('reg')
```

Comandos help:

```
:h :redir
:h execute()
```

# Depuración

## Tips generales

Si encuentras un comportamiento extraño, intenta reproducirlo así:

```
vim -u NONE -N
```

Esto iniciará Vim sin vimrc (por lo tanto, la configuración por defecto) y en modo nocompatible (lo que hace que utilice los valores predeterminados de Vim en lugar de los de vi). (Vea `:h --noplugin` para otras combinaciones de lo que debe cargar al inicio).

Si todavía puedes reproducirlo ahora, lo más probable es que sea un error en el propio Vim. Infórmalo en la lista de correo [vim_dev](https://groups.google.com/forum/#!forum/vim_dev). La mayoría de las veces el problema no se resolverá en ese momento y tendrás que seguir investigando.

Los plugins a menudo introducen un comportamiento nuevo/cambiado/falso. Por ejemplo, si ocurre al guardar, comprueba `:verb au BufWritePost` para obtener una lista de posibles culpables.

Si utilizas un gestor de plugins, coméntalos temporalmente hasta que encuentres al culpable.

¿El problema sigue sin resolverse? Si no es un plugin, debe ser su otra configuración, así que tal vez sus opciones o autocmds etc.

Es hora de utilizar la búsqueda binaria. Divida repetidamente el espacio de búsqueda en dos hasta que encuentre la línea culpable. Debido a la naturaleza de la división binaria, no tomará muchos pasos.

En la práctica, funciona así: Ponga el comando `:finish` en medio de su vimrc. Vim se saltará todo lo que venga después. Si sigue ocurriendo, el problema está en la mitad superior activa. Mueve el `:finish` a la mitad de _esa_ mitad. Si no, el problema está en la mitad inferior inactiva. Mueve el `:finish` a la mitad de _esa_ mitad. Y así sucesivamente.

## Verbosidad

Otra forma útil de observar lo que hace Vim actualmente es aumentar el nivel de verbosidad. Actualmente Vim soporta 9 niveles diferentes. Vea `:h 'verbose'` para la lista completa.

```vim
:e /tmp/foo
:set verbose=2
:w
:set verbose=0
```

Esto mostraría todos los archivos que se originan, por ejemplo, el archivo de deshacer o varios plugins que actúan al guardar.

Si sólo quieres aumentar la verbosidad para un solo comando, también está `:verbose`, que simplemente se pone delante de cualquier otro comando. Toma el nivel de verbosidad como cuenta y por defecto es 1:

```vim
:verb set verbose
"  verbose=1
:10verb set verbose
"  verbose=10
```

Se utiliza muy a menudo con su nivel de verbosidad 1 por defecto para mostrar dónde se estableció una opción por última vez:

```vim
:verb set ai?
"      Last set from ~/.vim/vimrc
```

Naturalmente, cuanto más alto sea el nivel de verbosidad, más abrumadora será la salida. Pero no temas más, puedes simplemente redirigir la salida a un archivo:

```vim
:set verbosefile=/tmp/foo | 15verbose echo "foo" | vsplit /tmp/foo
```

También puede habilitar la verbosidad en el momento de iniciar, con la opción `-V`. Por defecto, el nivel de verbosidad es 10. Por ejemplo, `vim -V5`.

## Perfilando el tiempo de inicio

¿El inicio de Vim es lento? Es hora de hacer números:

```
vim --startuptime /tmp/startup.log +q && vim /tmp/startup.log
```

La primera columna es la más importante, ya que muestra el tiempo absoluto transcurrido. Si hay un gran salto de tiempo entre dos líneas, la segunda línea es un archivo muy grande o un archivo con código VimL defectuoso que vale la pena investigar.

## Perfilando en tiempo de ejecución

[Funcionalidad](#¿qué-tipo-de-vim-estoy-utilizando) requerida: `+perfil`.

Vim proporciona una capacidad incorporada para perfilar en tiempo de ejecución y es una gran manera de encontrar código lento en su entorno.

El comando `:profile` tiene un montón de subcomandos para especificar lo que se va a perfilar.

Si quieres perfilar _todo_, haz esto:

    :profile start /tmp/profile.log
    :profile file *
    :profile func *
    <hacer algo en Vim>
    :qa

    Vim mantiene la información del perfil en la memoria y sólo la escribe en el archivo de registro al salir. (Neovim ha arreglado esto usando `:profile dump`).

Echa un vistazo a `/tmp/profile.log`. Se mostrará todo el código que se ha ejecutado durante el perfilado. Cada línea, cuántas veces se ha ejecutado y cuánto tiempo ha tardado.

Salte al final del registro. Aquí hay dos secciones diferentes `FUNCTIONS SORTED ON TOTAL TIME` (FUNCIONES ORDENADAS EN TIEMPO TOTAL) y `FUNCTIONS SORTED ON SELF TIME` (FUNCIONES ORDENADAS EN TIEMPO PROPIO) que valen oro. De un vistazo rápido puedes ver qué funciones están tardando más.

También puedes utilizar `:profile` durante el arranque:

    $ vim --cmd 'prof start prof.log | prof file * | prof func *' test.c
    :q
    $ tail -50 prof.log

## Depurando los scripts Vim

Si alguna vez has utilizado un depurador de línea de comandos, `:debug` te resultará rápidamente familiar.

Simplemente añade `:debug` a cualquier otro comando y se pondrá en modo de depuración. Es decir, la ejecución se detendrá en la primera línea a punto de ser ejecutada y se mostrará esa línea.

Vea `:h >cont` y más abajo los 6 comandos de depuración disponibles y tenga en cuenta que, como en gdb y depuradores similares, también puede utilizar sus formas cortas: `c`, `q`, `n`, `s`, `i` y `f`.

Aparte de estos, eres libre de usar cualquier comando de Vim, por ejemplo `:echo myvar`, que se ejecuta en el contexto de la posición actual en el código.

Básicamente se obtiene un [REPL](https://es.wikipedia.org/wiki/REPL) simplemente usando `:debug 1`.

Sería un dolor de cabeza si tuvieras que pasar por cada una de las líneas, así que, por supuesto, también podemos definir puntos de interrupción. (Los puntos de interrupción se llaman puntos de ruptura porque la ejecución se detiene cuando se alcanzan, por lo que puede simplemente saltarse el código que no le interesa). Vea `:h :breakadd`, `:h :breakdel`, y `:h :breaklist` para más detalles.

Supongamos que quiere saber qué código se ejecuta cada vez que guarda un archivo:

```vim
:au BufWritePost
" señalar  BufWritePost
"     *         llamar sy#start()
:breakadd func *start
:w
" Breakpoint in "sy#start" line 1
" Entering Debug mode.  Type "cont" to continue.
" función sy#start
" línea 1: if g:signify_locked
>s
" función sy#start
" línea 3: endif
>
" función sy#start
" línea 5: let sy_path = resolve(expand('%:p'))
>q
:breakdel *
```

Como puede ver, el uso de `<cr>` repetirá el comando de depuración anterior, `s` en este caso.

`:debug` puede ser usado en combinación con la opción de [verbosidad](#verbosidad) (`:verbose`).

## Depurando archivos de sintaxis

Los archivos de sintaxis suelen ser la causa de ralentizaciones debido a expresiones regulares erróneas y/o complejas. Si la [funcionalidad](#¿qué-tipo-de-vim-estoy-utilizando) `+perfil` está compilada, Vim proporciona el súper útil comando `:syntime`.

```vim
:syntime on
" pulse `<c-l>` unas cuantas veces para volver a mostrar la ventana, lo que hace que las reglas de sintaxis se apliquen de nuevo
:syntime off
:syntime report
```

La salida contiene métricas importantes. Por ejemplo, puede ver qué regexp tarda demasiado y debería optimizarse o qué regexps se utilizan todo el tiempo pero nunca coinciden.

Vea `:h :syntime`.

# Miscelánea

## Recursos adicionales

_Nota: Todos los recursos se encuentran en inglés._

| Recursos | Título en Español | Descripción |
|----------|----------|----------|
|[Seven habits of effective text editing](http://www.moolenaar.net/habits.html) | Siete hábitos de edición de textos eficaces | Por Bram Moolenaar, el autor de Vim. |
| [Seven habits of effective text editing 2.0 (PDF)](http://www.moolenaar.net/habits_2007.pdf) | Siete hábitos de edición de textos eficaces 2.0 (PDF) | Mismo que el de arriba. |
| [IBM DeveloperWorks: Scripting the Vim editor](http://www.ibm.com/developerworks/views/linux/libraryview.jsp?sort_order=asc&sort_by=Title&search_by=scripting+the+vim+editor) | IBM DeveloperWorks: Scripting del editor Vim | Serie de cinco partes sobre el scripting en Vim. |
| [Learn Vimscript the Hard Way](http://learnvimscriptthehardway.stevelosh.com) | Aprende Vimscript a las malas | Desarrolla un plugin de Vim desde cero. |
| [Practical Vim (2nd Edition)](https://pragprog.com/titles/dnvim2/practical-vim-second-edition) | Vim práctico (2ª edición) | Sin duda el mejor libro sobre Vim. |
| [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html) | ¿Por qué, oh POR QUÉ, esos #?@! chiflados usan vi? | Explicación de los conceptos erróneos más comunes. |
| [Your problem with Vim is that you don't grok vi](http://stackoverflow.com/a/1220118) | Tu problema con Vim es que no entiendes el vi | Conciso, informativo y correcto. Una verdadera joya. |

#### Recursos en forma de video

_Nota: Similarmente, estos recursos se encuentran en inglés._

- [vimcasts.org](http://vimcasts.org/episodes/archive)
- [Por wincent](https://www.youtube.com/channel/UCXPHFM88IlFn68OmLwtPmZA) (Canal de Youtube)
- [Por Derek Wyatt](http://derekwyatt.org/vim/tutorials/index.html)

## Distribuciones de Vim

Las distribuciones de Vim son paquetes de configuraciones personalizadas y plugins para Vim.

Los usuarios más avanzados saben cómo configurar su editor de todos modos, por lo que las distribuciones están dirigidas principalmente a los principiantes. Sin embargo, si lo piensas, es bastante paradójico: ¿Hacerlo más fácil añadiendo aún más cosas que aprender?

Sé que mucha gente no quiere pasar horas y horas personalizando un editor (y en realidad nunca dejas de personalizar tu vimrc cuando finalmente te enganchas), pero al final sólo consigues ser eficiente en Vim cuando te tomas el tiempo para aprenderlo correctamente.

Repite después de mí: "Un programador debe conocer sus herramientas".

De todos modos, si sabes lo que haces, podrías inspirarte mirando algunas distribuciones:

- [cream](http://cream.sourceforge.net)
- [janus](https://github.com/carlhuda/janus.git)
- [spacevim](https://github.com/SpaceVim/SpaceVim)
- [spf13](https://github.com/spf13/spf13-vim)

## Plugins standard

Mucha gente se sorprende por el hecho de que Vim viene con un puñado de plugins estándar. Algunos se cargan por defecto (`:e $VIMRUNTIME/plugin`) y otros no (`:e $VIMRUNTIME/pack/dist/opt`). Lee `:h pack-add` para saber cómo obtener estos últimos.

Sin embargo, la mayoría de los plugins que se cargan por defecto nunca se utilizarán. Desactívelos si lo considera oportuno. Seguirán apareciendo como fuente (`:scriptnames`), pero sólo se leerán las primeras líneas antes de que Vim se retire. No se procesará más código (mapeos, comandos, lógica).

| Plugin     | Desactívalo usando..                 | Comando help |
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

## Mapear CapsLock a Control

CapsLock es una de las teclas más inútiles del teclado, pero es mucho más fácil de alcanzar que la tecla Control, ya que se encuentra en la [fila de inicio](./static/images/content-homerow.png). La asignación de CapsLock a Control es una buena manera de prevenir o al menos reducir el [LMT](https://es.wikipedia.org/wiki/Lesiones_por_movimientos_repetitivos) si programas mucho.

Atención: Cuando te acostumbras, ya no puedes vivir sin ella.

**macOS**:

`Preferencias del Sistema -> Teclado -> Pestaña 'Teclado' -> Teclas de modificación`. Cambie "CapsLock" a "Control".

---

_En caso de tener el sistema operativo en Inglés_

`System Preferences -> Keyboard -> Keyboard Tab -> Modifier Keys`. Cambie
"CapsLock" a "Control".

**Linux**:

Para cambiar las claves en X, pon esto en tu `~/.xmodmap`:

    remove Lock = Caps_Lock
    keysym Caps_Lock = Control_L
    add Control = Control_L

A continuación, actualice la configuración a través de `$ xmodmap ~/.xmodmap`.

Una alternativa sería utilizar [caps2esc](https://github.com/oblitum/caps2esc) o [xcape](https://github.com/alols/xcape).

**Windows**:

Vea [superuser.com: Asignar Caps-Lock a Control en Windows 8.1](http://superuser.com/questions/764782/map-caps-lock-to-control-in-windows-8-1).

## Generar HTML del buffer

Genera HTML desde cualquier buffer usando `:TOhtml` del [plugin estándar](#plugins-standard) 2html. La salida se puede utilizar para imprimir o publicar fácilmente en la web.

El comando crea un nuevo buffer del mismo nombre con `.html` añadido. Los colores son los mismos que se ven en Vim. Dependen del [esquema de colores](#esquema-de-colores).

El plugin conoce varias opciones para ajustar la salida, por ejemplo, para establecer la codificación y la fuente.

Vea `:h :TOhtml`.

## Easter eggs

| Comando | Mensaje | Traducción |
|-----------|-----------|-----------|
| `:Ni!` | `Do you demand a shrubbery?`| ¿Exige usted un arbusto? |
| `:h 'sm'` | `NOTE: Use of the short form is rated PG.` | NOTA: El uso de la forma corta está clasificado como PG.|
| `:h 42` | `What is the meaning of life, the universe and everything? Douglas Adams, the only person who knew what this question really was about is now dead, unfortunately. So now you might wonder what the meaning of death is...` | ¿Cuál es el sentido de la vida, del universo y de todo? Douglas Adams, la única persona que sabía cuál era el verdadero sentido de esta pregunta, ha muerto, por desgracia. Así que ahora te preguntarás cuál es el significado de la muerte... |
| `:h UserGettingBored` | `When the user presses the same key 42 times. Just kidding! :-)` | Cuando el usuario pulsa la misma tecla 42 veces. ¡Es broma! :-) |
| `:h bar` | `Ceci n'est pas une pipe.` | Esto no es una pipa. |
| `:h holy-grail` | `You found it, Arthur!` | ¡Lo has encontrado, Arthur! |
| `:h map-modes` | `	:nunmap can also be used outside of a monastery.` | `:nunmap` también puede utilizarse fuera de un monasterio. | 
| `:help!` | `E478: Don't panic! (Glitch? When used in a help buffer (buftype=help) this works like :h help.txt instead.)` | E478: ¡No te asustes! ( ¿Glitch? Cuando se usa en un buffer de ayuda (buftype=help) esto funciona como `:h help.txt` en su lugar). |
| `:smile` | Try it out yourself. ;-) Added in 7.4.1005. | Pruébalo tú mismo ;-) Añadido en 7.4.1005. |
| `:hi!` | `	Greetings, Vim user!` | 	¡Saludos, usuario de Vim! |

## ¿Por qué hjkl para la navegación?

Cuando [Bill Joy](https://es.wikipedia.org/wiki/Bill_Joy) creó [vi](https://es.wikipedia.org/wiki/Vi), un predecesor de Vim, el lo hizo en un [ADM-3A](https://es.gggwiki.com/672994-adm-3a-JARUTR) que no tenía botones de cursor adicionales sino que usaba, ya lo habrás adivinado, hjkl en su lugar.

Disposición del teclado: [click](./static/images/content-adm-3a-layout.jpg)

Esto también muestra por qué `~` se utiliza para denotar el directorio de inicio en los sistemas Unix.

# Problemas comunes

## La edición de archivos pequeños es lenta

Hay dos cosas que pueden tener un gran impacto en el rendimiento:

1. Las **expresiones regulares** complejas. Particularmente el archivo de sintaxis de Ruby causó que la gente tuviera ralentizaciones en el pasado. (Ver también [Depuración de archivos de sintaxis](#depurando-archivos-de-sintaxis)).
2. **Redibujo de pantalla**. Algunas funciones obligan a redibujar todas las líneas.

Hay dos cosas que pueden tener un gran impacto en el rendimiento:

| Típico culpable | ¿Por qué? | ¿Solución? |
|-----------------|------|-----------|
| `:set cursorline`        | Hace que todas las líneas se redibujen. | `:set nocursorline` |
| `:set cursorcolumn`      | Hace que todas las líneas se redibujen. | `:set nocursorcolumn` |
| `:set relativenumber`    | Hace que todas las líneas se redibujen. | `:set norelativenumber` |
| `:set foldmethod=syntax` | Si el archivo de sintaxis ya es lento, esto lo empeora aún más. | `:set foldmethod=manual`, `:set foldmethod=marker` or [FastFold](https://github.com/Konfekt/FastFold) |
| `:set synmaxcol=3000`    | Debido a la representación interna, Vim tiene problemas con las líneas largas en general. Resalta las columnas hasta la columna 3000. | `:set synmaxcol=200` |
| matchparen.vim           | Cargado por defecto. Utiliza expresiones regulares para encontrar el paréntesis que lo acompaña. | Disable plugin: `:h matchparen` |

**NOTA**: Sólo necesitas hacer esto si experimentas inconvenientes reales de rendimiento. En la mayoría de los casos, el uso de las cosas mencionadas anteriormente está absolutamente bien.

## La edición de archivos grandes es lenta

El mayor problema con los archivos grandes es que Vim lee todo el archivo a la vez. Este
se hace debido a cómo se representan internamente los buffers.
([Discusión en vim_dev@](https://groups.google.com/forum/#!topic/vim_dev/oY3i8rqYGD4/discussion))

Si sólo quieres leer, `tail hugefile | vim -` es una buena solución.

Si puedes vivir sin sintaxis, configuraciones y plugins por el momento:

```
$ vim -u NONE -N
```

Esto debería hacer que la navegación sea bastante más rápida, especialmente porque no se utilizan costosas expresiones regulares para el resaltado de sintaxis. También debe decirle a Vim que no use archivos de intercambio y viminfo para evitar largas demoras en la escritura:

```
$ vim -n -u NONE -i NONE -N
```

En pocas palabras, trate de evitar el uso de Vim cuando tenga la intención de escribir archivos realmente
archivos enormes. :\

## Pegar entre corchetes (o ¿por qué tengo que poner "pegar" todo el tiempo?

El modo de pegado entre corchetes permite a los emuladores de terminal distinguir entre el texto escrito y el pegado.

¿Alguna vez has probado a pegar código en Vim y después todo parece desordenado?

Esto sólo ocurre si pegas mediante `cmd+v`, `shift-insert`, `middle-click`, etc. porque entonces sólo estás lanzando texto al emulador de terminal. Vim no sabe que acabas de pegar el texto, piensa que eres un mecanógrafo extremadamente rápido. En consecuencia, trata de sangrar las líneas y falla.

Obviamente esto no es un problema, si pegas usando los registros de Vim, por ejemplo `"+p`, porque entonces Vim sabe que realmente estás pegando.

Para solucionar esto, tienes que `:set paste`, para que se pegue tal cual. Ver `:h 'paste'` y `:h 'pastetoggle'`.

Si estás harto de tener que alternar `'pegar'` todo el tiempo, echa un vistazo a este buen plugin que lo hace por ti: [bracketed-paste](https://github.com/ConradIrwin/vim-bracketed-paste).

Lectura adicional del mismo autor del plugin: [aquí](http://cirw.in/blog/bracketed-paste).

**Neovim**: Neovim trata de hacer todo esto mucho más fluido y establece el modo de pegado entre corchetes automáticamente si el emulador de terminal lo soporta.

## Retrasos al utilizar la tecla de escape en el terminal

Si vives en la línea de comandos, probablemente utilices un llamado _emulador de terminal_ como xterm, gnome-terminal, iTerm2, etc. (en lugar de un [terminal](https://es.wikipedia.org/wiki/Terminal_(inform%C3%A1tica)) real).

Al igual que sus antepasados, los emuladores de terminal utilizan [secuencias de escape](https://es.frwiki.wiki/wiki/S%C3%A9quence_d%27%C3%A9chappement)
(o _secuencias de control_) para controlar cosas como mover el cursor, cambiar los colores del texto, etc. Se trata simplemente de cadenas de caracteres ASCII que comienzan con un carácter de escape (mostrado en [notación caret](https://es.frwiki.wiki/wiki/Notation_caret) como `^[`). Cuando llega una cadena de este tipo, el emulador de terminal busca la acción que la acompaña en la base de datos [terminfo](https://it.abcdef.wiki/wiki/Terminfo).

Para aclarar el problema, primero explicaré los tiempos de espera de los mapeos. Siempre ocurren cuando hay ambigüedad entre los mapeos:

```vim
:nnoremap ,a  :echo 'foo'<cr>
:nnoremap ,ab :echo 'bar'<cr>
```

Ambos mapeos funcionan como se espera, pero al escribir `,a`, habrá un retraso de 1 segundo, porque Vim espera si el usuario teclea otra `b` o no.

Las secuencias de escape plantean el mismo problema:

- `<esc>` se utiliza mucho para volver al modo normal o salir de una acción.
- Las teclas del cursor se codifican mediante secuencias de escape.
- Vim espera que <kbd>Alt</kbd> (también llamada tecla Meta) envíe una codificación adecuada de 8 bits con el bit alto activado, pero muchos terminales

Puedes probar lo anterior así: `vim -u NONE -N` y teclear `i<c-v><left>` y verás que se inserta una secuencia que comienza con `^[` que denota el carácter de escape.

En resumen, a Vim le cuesta distinguir entre un carácter `<esc>` tecleado y una secuencia de escape adecuada.

Por defecto, Vim utiliza `:set timeout timeoutlen=1000`, por lo que retrasa en 1 segundo la ambigüedad de los mapeos _y_ los códigos clave. Este es un valor razonable para las asignaciones, pero puedes definir el tiempo de espera del código clave por sí mismo, el cual es la solución más común para todo este problema:

```vim
set timeout           " para mapeos
set timeoutlen=1000   " valor por defecto
set ttimeout          " para los códigos de las teclas
set ttimeoutlen=10    " valor pequeño e imperceptible
```

Bajo `:h ttimeout` encontrarás una pequeña tabla que muestra la relación entre estas opciones.

Si estás usando tmux entre Vim y tu emulador de terminal, pon también esto en tu `~/.tmux.conf`:

```tmux
set -sg escape-time 0
```

## Deshacer función de busqueda (function-search-undo)

- Un patrón de búsqueda en un comando (`/`, `:substitute`, ...) cambia el "último patrón de búsqueda utilizado". (Se guarda en el registro `/`; imprímalo con `:echo @/`).
- Un simple cambio de texto puede hacerse con `.`. (Se guarda en el registro `.`; imprímalo con `:echo @.`).

¡Sin embargo, ambas cosas _no_ son el caso, si las haces desde una función! Por lo tanto, no puedes resaltar fácilmente las palabras desde una función o rehacer los cambios de texto realizados por ella.

Comando help: `:h function-search-undo`

# Peculiaridades técnicas

## Nueva linea utilizada para NUL

Los caracteres NUL (`\0`) en un archivo, se almacenan como nueva línea (`\n`) en la memoria y
se muestran en un buffer como `^@`.

Vea `man 7 ascii` y `:h NL-used-for-Nul` para más información.

# Terminología

## Vim script? Vimscript? VimL?

Los términos `Vim script`, `Vimscript` y `VimL` se refieren a lo mismo: el lenguaje de programación utilizado para hacer scripts en Vim. Aunque [8.0.360](https://github.com/vim/vim/commit/b544f3c81f1e6a50322855681ac266ffaa8e313c) cambió todas las referencias de `VimL` a `Vim script`, que ahora puede considerarse el término oficial, `VimL` sigue estando muy extendido por todo Internet.

No importa el término que utilices, todo el mundo lo entenderá.
