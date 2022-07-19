-- NetRW (integrated file explorer)
vim.cmd [[
let g:netrw_banner=0
"let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25
let g:netrw_keepdir=0
let g:netrw_localcopydircmd='cp -r'
let g:netrw_hide = 1
" let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
hi! link netrwMarkFile Search

" Ensure nvim closes if NetRW is the unique opened window
aug netrw_close
au!
au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END
]]
