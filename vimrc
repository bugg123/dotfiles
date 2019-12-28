" General
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set hidden

syntax on
let mapleader = ","

inoremap jk <Esc>
inoremap kj <Esc>

" Persistant Undo
if has('persistent_undo') && isdirectory(expand('~').'/.vim/.undo')
  silent !mkdir ~/.vim/.undo > /dev/null 2>&1
  set undodir=~/.vim/.undo//
  set undofile
endif

" Indention
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

let g:terraform_fmt_on_save=1

execute pathogen#infect()

" Go config
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

call plug#begin('~/dotfiles/vim/plugged')

Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'junegunn/fzf'
Plug 'hashivim/vim-terraform'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'fatih/molokai'
Plug 'cespare/vim-toml'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
"" call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = '/Users/corey/go/src/github.com/stamblerre/gocode'
