if has("win32")
	" Default font but reduced font-size
	:GuiFont! Consolas:h10
	" Disable qt popupmenu, use vim built-in instead
	GuiPopupmenu 0
	" NOT WORKING (better open nvim from console)
	" Solve trouble with '[' character in Windows
	" :call nvim_input('[')
endif
