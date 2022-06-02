if has("win32")
	" Default font but reduced font-size
	:GuiFont! Consolas:h10
	" Disable qt popupmenu, use vim built-in instead
	GuiPopupmenu 0
	" Cd to repos directory inside user's home
	:cd $USERPROFILE\source\repos
	" NOT WORKING (better open nvim from console)
	" Solve trouble with '[' character in Windows
	" :call nvim_input('[')
endif
