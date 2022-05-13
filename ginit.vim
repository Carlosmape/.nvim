if has("win32")
	" Default font but reduced font-size
	:GuiFont! Consolas:h10
	" Disable qt popupmenu, use vim built-in instead
	GuiPopupmenu 0
	" Cd to repos directory inside user's home
	:cd $USERPROFILE\source\repos
endif
