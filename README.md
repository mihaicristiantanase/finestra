# finestra

### What is does:
Brings 5 mappings to manipulate windows in Vim.

### What it requires:
VIM 7+

### How does it work:
If you want to move a window to a specific split, you'll need to mark the
source window and then move to the destination window and run one of the 5
mappings provided by this plugin.
To mark the source window, you press `<Leader>ww`. Then:
* to move it over another window: press `<Leader>ww`
* to move above another window: press `<Leader>wk`
* to move below another window: press `<Leader>wj`
* to move to the left of window: press `<Leader>wh`
* to move to the right of another window: press `<Leader>wl`

### What is the motivation:
Vim does not have a straight forward way of manipulating windows. *Finestra*
comes as a simple solution to this inconvenience.

### How to install:

Vundle<br/>
`Plugin 'mihaicristiantanase/finestra'`

vim-plug<br/>
`Plug 'mihaicristiantanase/finestra'`

Pathogen<br/>
`git clone https://github.com/mihaicristiantanase/finestra ~/.vim/bundle/finestra`
