set number
set clipboard=unnamed
syntax enable
set showcmd
set encoding=utf8
set relativenumber
set mouse=a
set showmatch

set tabstop=4
set shiftwidth=4

" Keyboard commands binding
let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>	
nmap <Leader>cs :set spell!<CR>
nmap <Leader>sr :%s
call plug#begin('~/.vim/plugged')
"
" Theme plugin
Plug 'morhetz/gruvbox'

" Vitamined search and navigation by match results
Plug 'easymotion/vim-easymotion'
nmap <Leader>s <Plug>(easymotion-sn)
nmap <Leader>sw <Plug>(easymotion-w)

" Allows tree folder navigation view
Plug 'scrooloose/nerdtree'
" Shows git file states in NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif" Keyboard-Map NERDTree
let NERDTreeQuitOnOpen=0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTree shortcut
nmap <Leader>nt :NERDTreeVCS<CR>

" Allows to open splitted documents
Plug 'christoomey/vim-tmux-navigator'

" Automatically closes brackets, quotes and so on
Plug 'jiangmiao/auto-pairs'

" This plugin adds the ability to automatically lint code while you edit in Vim
Plug 'dense-analysis/ale'
" Able ALE by default (it will launches check errors when in normal mode)
g:ale_enabled 1

" Poor autocompletion plugin, but works!
"Plug 'maxboisvert/vim-simple-complete'
" Finest autocompletion plugin. Testing
Plug 'ackyshake/VimCompletesMe'
autocmd FileType vim let b:vcm_tab_complete = 'vim'
" Even better simple and low dependency (Just NodeJS) autocompletion plugin
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
" use TAB to autocomplete
"inoremap <silent><expr> <Tab>
"      \ pumvisible() ? '\<C-n>':
"      \ <SID>check_back_space() ? '\<Tab>' :
"      \ coc#refresh()
" use <c-space>for trigger completion
"inoremap <silent><expr> <c-space> coc#refresh()

" Integrated Compilation plugin
Plug 'tpope/vim-dispatch'

" Status line
Plug 'itchyny/lightline.vim'
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'gruvbox',
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

"Plugin to search in PWD <Ctrl>+<p>
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

"Auto current word highlighter
set updatetime=10
function! HighlightWordUnderCursor()
    let disabled_ft = ["qf", "fugitive", "nerdtree", "gundo", "diff", "fzf", "floaterm"]
    if &diff || &buftype == "terminal" || index(disabled_ft, &filetype) >= 0
        return
    endif
    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
        hi MatchWord cterm=undercurl gui=undercurl guibg=#3b404a
        exec 'match' 'MatchWord' '/\V\<'.expand('<cword>').'\>/'
    else
        match none
    endif
endfunction
augroup MatchWord
  autocmd!
  autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
augroup END

colorscheme gruvbox
