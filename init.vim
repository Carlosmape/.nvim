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
" Able check spell by default
:set spell

" Keyboard commands binding asdasd badword
let mapleader=" "
" Map to save
nmap <Leader>w :w<CR>
nmap <c-s> :w<CR>
" Map to close current
nmap <Leader>q :q<CR>
" Map to check spell
nmap <Leader>cs :set spell!<CR>
" ALE mapping keys:
" Rename (locally)
nmap <Leader>r :ALERename<CR>
nmap <Leader>d :ALEGoToDefinition<CR>
nmap <Leader>D :ALEGoToTypeDefinition<CR>
nmap <Leader>n :ALENextWrap<CR>
nmap <Leader>. :ALEHover<CR>
nmap <F8> <Plug>(ale_fix)
" Default map to execute current script
nmap <F5> :Start<CR>
" Execute Dispatcher
nmap <F15> :Dispatch<CR>

call plug#begin('~/.vim/plugged')

" Theme plugin
Plug 'morhetz/gruvbox'

" Greeter (start-page)
Plug 'mhinz/vim-startify'
let g:startify_custom_header = [
			\ ' 	     __                _            ',
			\ ' 	  /\ \ \___  ___/\   /(_)_ __ ___   ',
			\ ' 	 /  \/ / _ \/ _ \ \ / / | ´_ ` _ \  ',
			\ ' 	/ /\  /  __/ (_) \ V /| | | | | | | ',
			\ ' 	\_\ \/ \___|\___/ \_/ |_|_| |_| |_| ',
			\ '     									'
			\ ]

" Vitamined search and navigation by match results
Plug 'easymotion/vim-easymotion'
nmap <c-f> <Plug>(easymotion-sn)
nmap <>sw <Plug>(easymotion-w)

" Allows tree folder navigation view
Plug 'scrooloose/nerdtree'
" Shows git file states in NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'
" Opens NT at the beggining
autocmd VimEnter * NERDTreeVCS: | wincmd p" Close NT after open a file
" Do not close NT when open a file from it
let NERDTreeQuitOnOpen=0
" Close NT if it is te last tab opened (avoid to :q once if NT is opened)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTree shortcut
nmap <Leader>nt :NERDTreeFind<CR>

" Allows to open splitted documents
Plug 'christoomey/vim-tmux-navigator'

" Automatically closes brackets, quotes and so on (too basic)
Plug 'lunarwatcher/auto-pairs'

" This plugin adds the ability to automatically lint code while you edit in Vim
Plug 'dense-analysis/ale'
" Windows scripts to run python linters
if has("win32")
	let win_path = fnamemodify($MYVIMRC, ":h") . "\\LSPWindows\\win.vim"
	execute 'source '. win_path
endif
" ALE Fixers (general and specific for each language)
let g:ale_fixers =
			\ {'*': ['remove_trailing_lines', 'trim_whitespace'],
			\ 'javascript': ['eslint'],
			\ 'python': ['autoflake', 'autoimport', 'isort'] }
" Another ALE configurations
let g:ale_history_enabled = 1
let g:ale_completion_enabled = 0
let g:ale_completion_autoimport = 1
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

" Autocompletion plugin richer then ALE integrated one
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ deoplete#manual_complete()
inoremap <silent><expr> <ESC>
		\ pumvisible() ? deoplete#cancel_popup() :
		\ "\<ESC>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Integrated Compilation/Launch plugin
Plug 'tpope/vim-dispatch'
autocmd FileType java let b:dispatch = 'javac %'
autocmd FileType python let b:dispatch ='python test.py'
autocmd FileType python let b:start = 'python %'

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
