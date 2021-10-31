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

" Keyboard commands binding asdasd badword
let mapleader=" "
" Map to save
nmap <Leader>w :w<CR>
" Map to close current
nmap <Leader>q :q<CR>	
" Map to check spell
nmap <Leader>cs :set spell!<CR>
" Map to open splitted terminal (disabling line number)
nmap <Leader>t :5split +te<CR>
autocmd TermOpen * setlocal nonumber norelativenumber
" Able check spell by default
:set spell 
" ALE mapping keys:
" Rename (locally)
nmap <Leader>r :ALERename<CR>
nmap <Leader>d :ALEGoToDefinition<CR>
nmap <Leader>D :ALEGoToTypeDefinition<CR>
nmap <Leader>n :ALENextWrap<CR>
" Default map to execute current script
nmap <F5> :Start ./%<CR>
" Execute in bg
nmap <s-F5> :Start! ./%<CR>
" Dispatch/Make 
nmap <Leader><F5> :Dispatch<CR>
nmap <Leader><c-F5> :Dispatch %
call plug#begin('~/.vim/plugged')

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
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif" Keyboard-Map NERDTree
" Close NT after open a file
let NERDTreeQuitOnOpen=0
" Close NT if it is the last tab opened (avoid to :q once if NT is opened)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTree shortcut
nmap <Leader>nt :NERDTreeVCS<CR>

" Allows to open splitted documents
Plug 'christoomey/vim-tmux-navigator'

" Automatically closes brackets, quotes and so on (too basic)
" Plug 'jiangmiao/auto-pairs'
" A powerfull optimized and features rich fork of jiangmiao's
Plug 'lunarwatcher/auto-pairs' 

" This plugin adds the ability to automatically lint code while you edit in Vim
Plug 'dense-analysis/ale'
" Windows scripts to run python linters
if has("win32")
	let lint_path = fnamemodify($MYVIMRC, ":h") . "/windowsLinters/"
	let g:ale_python_pylint_executable = lint_path . 'pylint.bat'
	let g:ale_cpp_cpplint_executable = lint_path . 'cpplint.bat'
endif
"let g:ale_enabled 1
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

" Integrated Compilation plugin
Plug 'tpope/vim-dispatch'
autocmd FileType java let b:dispatch = 'javac %'
autocmd FileType python let b:dispatch ='pylint %'

" Status line
Plug 'itchyny/lightline.vim'
" Disables command mode in above cmd line
set noshowmode
" Configuraion of lightline status bar
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'filename', 'gitbranch', 'modified', 'linter' ] ]
			\ },
			\ 'component_function': {
			\   'gitbranch': 'gitbranch#name',
			\   'filename': 'LightLineCustomFilePath',
			\	'linter': 'LinterStatus'
			\ },
			\ 'mode_map': {
			\ 	'n' : 'N',
			\ 	'i' : 'I',
			\ 	'R' : 'R',
			\ 	'v' : 'V',
			\ 	'V' : 'VL',
			\ 	"\<C-v>": 'VB',
			\ 	'c' : 'C',
			\ 	's' : 'S',
			\ 	'S' : 'SL',
			\ 	"\<C-s>": 'SB',
			\ 	't': 'T',
			\ },
			\ }
" Custom function to show current file with parent dir in lightline 
function! LightLineCustomFilePath()
	return expand('%') !=# '' ? expand('%:p:h:t').'/'.expand('%') : '[New file]'
endfunction
" Function to show ALE Linter errors
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%d! %dX',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

" Child plugin to show CVS Git status
Plug 'itchyny/vim-gitbranch'

"Plugin to search in PWD <Ctrl>+<p>
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

colorscheme gruvbox
