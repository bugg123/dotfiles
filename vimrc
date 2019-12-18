syntax on

so ~/dotfiles/vim/autoload/harlequin.vim
inoremap jk <Esc>
inoremap kj <Esc>
autocmd FileType yaml,toml,go,mod setlocal ts=2 sts=2 sw=2 expandtab

let g:terraform_fmt_on_save=1
let g:go_fmt_command = "goimports"

execute pathogen#infect()

set backspace=indent,eol,start
set undodir=~/dotfiles/vim/.undo//
set backupdir=~/dotfiles/vim/.backup//
set directory=~/dotfiles/vim/.swp//

call plug#begin('~/dotfiles/vim/plugged')

Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'junegunn/fzf'
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'cespare/vim-toml'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/deoplete.nvim'
let g:deoplete#enable_at_startup = 1

call plug#end()
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
