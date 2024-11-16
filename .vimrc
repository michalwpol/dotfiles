set nocompatible
filetype plugin on
syntax on

call plug#begin('~/.vim/plugged')

" Przykład wtyczki
Plug 'preservim/nerdtree'  " Menedżer plików
Plug 'vim-airline/vim-airline'  " Lepszy pasek statusu
Plug 'tpope/vim-speeddating'
Plug 'jamessan/vim-gnupg'  " vim-gpg
Plug 'JamshedVesuna/vim-markdown-preview'

call plug#end()

nnoremap <C-n> :NERDTreeToggle<CR>

set relativenumber
set number
set clipboard=unnamedplus

if has('clipboard')
  let g:clipboard = {
        \ 'name': 'wl-clipboard',
        \ 'copy': {
        \   '+': 'wl-copy',
        \   '*': 'wl-copy',
        \  },
        \ 'paste': {
        \   '+': 'wl-paste',
        \   '*': 'wl-paste',
        \  },
        \ }
endif




