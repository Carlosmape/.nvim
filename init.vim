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

" Vitamined search and navigation by match results
Plug 'easymotion/vim-easymotion'

" Allows tree folder navigation view
Plug 'scrooloose/nerdtree'
let NERDTreeQuitOnOpen=1

" Allows to open splitted documents
Plug 'christoomey/vim-tmux-navigator'

" Automatically closes brackets, quotes and so on
Plug 'jiangmiao/auto-pairs'

" This plugin adds the ability to automatically lint code while you edit in Vim
Plug 'dense-analysis/ale'
Plug 'maxboisvert/vim-simple-complete'
"set complete-=t
"set complete-=i

" Status line
Plug 'itchyny/lightline.vim'
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'gitbranch': 'gitbranch#name'
	\ },
	\ }
" Child plugin to show CVS Git status
Plug 'itchyny/vim-gitbranch'

call plug#end()

colorscheme gruvbox

" Keyboard commands binding
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
