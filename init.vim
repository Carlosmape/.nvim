set number
set clipboard=unnamed
syntax enable
set showcmd
set encoding=utf8
set relativenumber
set mouse=a
set showmatch

call plug#begin('~/.vim/plugged')

" Theme plugin
Plug 'morhetz/gruvbox'

" Features
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'

" This plugin adds the ability to automatically lint code while you edit in Vim
Plug 'dense-analysis/ale'

call plug#end()

colorscheme gruvbox

" Keyboard commands binding
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
