syntax on

so ~/dotfiles/vim/autoload/harlequin.vim
inoremap jk <Esc>
inoremap kj <Esc>
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

execute pathogen#infect()

set backspace=indent,eol,start
set undodir=~/dotfiles/vim/.undo//
set backupdir=~/dotfiles/vim/.backup//
set directory=~/dotfiles/vim/.swp//

call plug#begin('~/dotfiles/vim/plugged')

Plug 'junegunn/vim-xmark', { 'do': 'make' }

call plug#end()
