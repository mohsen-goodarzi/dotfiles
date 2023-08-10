set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'liuchengxu/vim-which-key'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'zacanger/angr.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Default key maps
let mapleader = " " " map leader to Space

nnoremap <S-t> :tabnew<cr>
nnoremap <S-n> :tabn<cr>
nnoremap <S-p> :tabp<cr>
nnoremap <S-w> :tabc<cr>

nnoremap <C-n> :set number!<cr>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" System Clipboard
set clipboard=unnamed

" Line Numbering
set nu

" Enable folding with the spacebar
nnoremap \ za

" UTF-8 Support
set encoding=utf-8

" Jedi Auto-Complete setting
let g:jedi#auto_initialization = 1
let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#use_splits_not_buffers = "right"
" Load rope plugin
let g:pymode_folding=1



let python_highlight_all=1
syntax on

" NERDTree key maps
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Which key setting
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

"nnoremap <F5> :terminal python -m pdb %<space><CR>
nnoremap <F5> :terminal bash -c "read -p arguments? arguments; python -m pdb %<space>$arguments"
nnoremap <F8> ibreakpoint()<Esc>
nnoremap <F9> :/breakpoint()<cr>
iab brk breakpoint()

color happy_hacking
